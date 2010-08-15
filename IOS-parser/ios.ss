#lang scheme/base

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Cisco IOS Configuration Modeling
;;  Copyright (C) 2009-2010 Christopher Barratt & Brown University
;;  All rights reserved.
;;
;; Modifications by Tim are marked with -TN
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require scheme/class)
(require scheme/list)

(provide hostname<%>)
(provide hostname%)
(provide address<%>)
(provide host-address%)
(provide network-address%)
(provide port<%>)
(provide port%)
(provide port-range%)
(provide rule%)
(provide interface%)
(provide ACE<%>)
(provide standard-ACE%)
(provide extended-ACE-IP%)
(provide extended-ACE-ICMP%)
(provide extended-ACE-TCP/UDP%)
(provide extended-ACE-TCP/flags%)
(provide extended-reflexive-ACE-TCP/UDP%)
(provide ACL%)
(provide NAT<%>)
(provide source-list-NAT%)
(provide source-map-NAT%)
(provide destination-list-NAT%)
(provide destination-map-NAT%)
(provide static-source-NAT-IP%)
(provide static-source-NAT-TCP/UDP%)
(provide static-source-NAT-TCP/UDP-interface%)
(provide static-source-map-NAT%)
(provide static-destination-NAT-IP%)
(provide static-destination-NAT-TCP/UDP%)
(provide static-destination-NAT-TCP/UDP-interface%)
(provide static-destination-map-NAT%)
(provide static-route<%>)
(provide static-route-gateway%)
(provide static-route-interface%)
(provide set-action<%>)
(provide next-hop-gateway%)
(provide next-hop-interface%)
(provide route-map%)
(provide neighbor<%>)
(provide neighbor%)
(provide endpoint<%>)
(provide preshared-key-endpoint%)
(provide IOS-config%)
(provide make-empty-IOS-config)
(provide policy)
(provide vocabulary)
(provide TCP-flags)

;; (hashtable any any) (any any -> boolean) -> (listof (any any))
;;   Returns a list of (key, value) pairs from a hashtable that
;;   satisfy a given predicate
(define (hash-filter hash pred)
  (define (hash-filter-helper pos results)
    (if pos
        (hash-filter-helper (hash-iterate-next hash pos)
                            (let [(key (hash-iterate-key hash pos))
                                  (value (hash-iterate-value hash pos))]
                              (if (pred key value)
                                  (cons (cons key value) results)
                                  results)))
        results))
  (hash-filter-helper (hash-iterate-first hash) '()))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Primitive Types
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; An atom<%> is a value that Margrave may assign to a variable.
;;   text : -> symbol
;;     Returns the symbolic representation of this atom
;;   single? : -> boolean
;;     Returns whether this atom may occur at most once in a solution
;;   equals? : atom<%> -> boolean
;;     Returns whether this atom equals another atom
;;   covers? : atom<%> -> boolean
;;     Returns whether this atom covers another atom
(define atom<%> (interface () text single? equals? covers?))

;; An address<%> is an IP address (or group of addresses).
;;   address : -> number
;;     Returns the address (or subnet address)
;;   mask : -> number
;;     Returns the network mask (0xFFFFFFFF for a single host)
(define address<%> (interface (atom<%>) address mask))

;; A port<%> is a TCP/UDP port (or range of ports).
;;   range-start : -> number
;;     Returns the first port in the range (inclusive)
;;   range-end : -> number
;;     Returns the last port in the range (inclusive)
(define port<%> (interface (atom<%>) range-start range-end))

;; A length<%> is a packet length.
;;   length : -> number
;;     Returns the length
(define length<%> (interface (atom<%>) length))

;; A hostname<%> is a name that a router can take.
;;   name : -> symbol
;;     Returns the name
(define hostname<%> (interface (atom<%>) name))


;; abstract-address% : symbol
;;   The abstract base class for an address<%>
(define abstract-address%
  (class object%
    (super-make-object)
    
    ;; symbol -> number
    ;;   Returns the numeric representation of an IP address in dotted-octet form
    (define/public (dotted-octet->number symbolic-address)
      (let [(octets (rest (regexp-match (pregexp "(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)")
                                        (symbol->string symbolic-address))))]
        (bitwise-ior (arithmetic-shift (string->number (list-ref octets 0)) 24)
                     (arithmetic-shift (string->number (list-ref octets 1)) 16)
                     (arithmetic-shift (string->number (list-ref octets 2)) 8)
                     (string->number (list-ref octets 3)))))
    
    ;; number -> string
    ;;   Returns the dashed-octet representation of an IP address
    (define/public (number->dashed-octet numeric-address)
      (string-append "ip-"
                     (number->string (arithmetic-shift (bitwise-and numeric-address #xFF000000) -24))
                     "-"
                     (number->string (arithmetic-shift (bitwise-and numeric-address #x00FF0000) -16))
                     "-"
                     (number->string (arithmetic-shift (bitwise-and numeric-address #x0000FF00) -8))
                     "-"
                     (number->string (bitwise-and numeric-address #x000000FF))))
    ))


;; host-address% : symbol
;;   Represents a single IP address
(define host-address%
  (class* abstract-address% (address<%>)
    (init symbolic-address)
    (super-make-object)
    
    (inherit dotted-octet->number)
    (inherit number->dashed-octet)
    
    ;; The host address
    (define host (dotted-octet->number symbolic-address))
    
    ;; -> symbol
    ;;   Returns a symbol in in ip-A.B.C.D form
    (define/public (text)
      (string->symbol (number->dashed-octet host)))
    
    ;; address<%> -> boolean
    ;;   Returns whether this address<%> equals another address<%>
    (define/public (equals? rhs)
      (and (eqv? (address) (send rhs address))
           (eqv? (mask) (send rhs mask))))
    
    ;; -> boolean
    ;;   Returns whether this address<%> represents a single address
    ;;   (always true)
    (define/public (single?)
      #t)
    
    ;; address<%> -> boolean
    ;;   Returns whether this address<%> covers another address<%>
    ;;   (always false)
    (define/public (covers? rhs)
      #f)
    
    ;; -> number
    ;;   Returns this address<%> as a number
    (define/public (address)
      host)
    
    ;; -> number
    ;;    Returns the mask for this address<%> (always 0xFFFFFFFF)
    (define/public (mask)
      #xFFFFFFFF)
    ))


;; network-address% : symbol symbol boolean
;;   Represents a range of IP addresses identified by a mask
(define network-address%
  (class* abstract-address% (address<%>)
    (init symbolic-address symbolic-mask wildcard)
    (super-make-object)
    
    (inherit dotted-octet->number)
    (inherit number->dashed-octet)
    
    ;; The network address
    (define network (bitwise-and (dotted-octet->number symbolic-address)
                                 (canonical-mask symbolic-mask wildcard)))
    
    ;; The network mask
    (define network-mask (canonical-mask symbolic-mask wildcard))
    
    ;; -> symbol
    ;;   Returns a symbol in ip-A.B.C.D/ip-E.F.G.H form
    ;; If the address and mask are both 0, return the root. -TN
    (define/public (text)
      ;(printf "Test: ~a ~a ~n" (address) (mask))
      (if (and (equal? 0 (address)) 
               (equal? 0 (mask)))
          'IPAddress
          (string->symbol (string-append (number->dashed-octet (address))
                                         "/"
                                         (number->dashed-octet (mask))))))
    
    ;; address<%> -> boolean
    ;;   Returns whether this address<%> equals another address<%>
    (define/public (equals? rhs)
      (and (eqv? (address) (send rhs address))
           (eqv? (mask) (send rhs mask))))
    
    ;; -> boolean
    ;;   Returns whether this address<%> represents a single address
    ;;   (always false)
    (define/public (single?)
      #f)
    
    ;; address<%> -> boolean
    ;;   Returns whether this address<%> covers another address<%>
    (define/public (covers? rhs)
      (and (not (equals? rhs))
           (eqv? network (bitwise-and (send rhs address) network-mask))))
    
    ;; -> number
    ;;   Returns this address<%> as a number
    (define/public (address)
      network)
    
    ;; -> number
    ;;   Returns the mask for this address<%>
    (define/public (mask)
      network-mask)
    
    ;; symbol boolean -> number
    ;;   Converts a symbolic mask into a numeric one.  If the mask is
    ;;   a wildcard (i.e., ACL-based) mask, this method converts it into
    ;;   a standard mask.
    (define/private (canonical-mask symbolic-mask wildcard)
      (let [(numeric-mask (dotted-octet->number symbolic-mask))]
        (if wildcard
            (bitwise-xor numeric-mask #xFFFFFFFF)
            numeric-mask)))
    ))


;; abstract-port%
;;   The abstract base class for a port<%>
(define abstract-port%
  (class object%
    (super-make-object)
    ))

;; port% : number
;;   Represents a TCP/UDP port
(define port%
  (class* abstract-port% (port<%>)
    (init numeric-port)
    (super-make-object)
    
    ;; The port
    (define port numeric-port)
    
    ;; -> symbol
    ;;   Returns a symbol in port-N form
    (define/public (text)
      (string->symbol (string-append "port-" (number->string port))))
    
    ;; port<%> -> boolean
    ;;   Returns whether this port<%> equals another port<%>
    (define/public (equals? rhs)
      (and (eqv? (range-start) (send rhs range-start))
           (eqv? (range-end) (send rhs range-end))))
    
    ;; -> boolean
    ;;   Returns whether this port<%> represents a single port
    ;;   (always true)
    (define/public (single?)
      #t)
    
    ;; port<%> -> boolean
    ;;   Returns whether this port<%> covers another port<%>
    ;;   (always false)
    (define/public (covers? rhs)
      #f)
    
    ;; -> number
    ;;   Returns the starting port number in this port<%>
    ;;   (always this port)
    (define/public (range-start)
      port)
    
    ;; -> number
    ;;   Returns the ending port number in this port<%>
    ;;   (always this port)
    (define/public (range-end)
      port)
    ))


;; port-range% : number number
;;   Represents a range of ports
(define port-range%
  (class* abstract-port% (port<%>)
    (init start-numeric-port end-numeric-port)
    (super-make-object)
    
    ;; The starting port number
    (define start-port start-numeric-port)
    
    ;; The ending port number
    (define end-port end-numeric-port)
    
    ;; -> symbol
    ;;   Returns a symbol in the form ports-M-N
    ;; -TN If all ports are covered, just say Ports
    (define/public (text)
      (if (and (equal? 0 (range-start))
               (equal? 65535 (range-end)))
          'Port
          (string->symbol (string-append "ports-"
                                         (number->string (range-start))
                                         "-"
                                         (number->string (range-end))))))
    
    ;; port<%> -> boolean
    ;;   Returns whether this port<%> equals another port<%>
    (define/public (equals? rhs)
      (and (eqv? (range-start) (send rhs range-start))
           (eqv? (range-end) (send rhs range-end))))
    
    ;; -> boolean
    ;;   Returns whether this port<%> represents a single port
    ;;   (always false)
    (define/public (single?)
      #f)
    
    ;; port<%> -> boolean
    ;;   Returns whether this port<%> covers another port<%>
    (define/public (covers? rhs)
      (and (not (equals? rhs))
           (<= (range-start) (send rhs range-start))
           (>= (range-end) (send rhs range-end))))
    
    ;; -> number
    ;;   Returns the starting port number in this port<%>
    (define/public (range-start)
      start-port)
    
    ;; -> number
    ;;   Returns the ending port number in this port<%>
    (define/public (range-end)
      end-port)
    ))


;; length% : number
;;   Represents a packet length
(define length%
  (class* object% (length<%>)
    (init numeric-length)
    (super-make-object)
    
    (define packet-length numeric-length)
    
    ;; -> symbol
    ;;   Returns a symbol in the form len-N
    (define/public (text)
      (string->symbol (string-append "len-" (number->string packet-length))))
    
    ;; -> boolean
    ;;   Returns whether this length<%> represents a single length
    ;;   (always true)
    (define/public (single?)
      #t)
    
    ;; length<%> -> boolean
    ;;   Returns whether this length<%> equals another length<%>
    (define/public (equals? rhs)
      (eqv? packet-length (send rhs length)))
    
    ;; length<%> -> boolean
    ;;   Returns whether this length<%> covers another length
    (define/public (covers? rhs)
      #f)
    
    ;; -> number
    ;;   Returns this length<%> as a number
    (define/public (length)
      packet-length)
    ))


;; hostname% : symbol
;;   Represents a router's hostname
(define hostname%
  (class* object% (hostname<%>)
    (init symbolic-name)
    (super-make-object)
    
    ;; The hostname
    (define hostname symbolic-name)
    
    ;; -> symbol
    ;;   Returns a symbol in the form hostname-X
    (define/public (text)
      (string->symbol (string-append "hostname-" (symbol->string hostname))))
    
    ;; -> boolean
    ;;   Returns whether this hostname<%> represents a single hostname
    ;;   (always true)
    (define/public (single?)
      #t)
    
    ;; hostname<%> -> boolean
    ;;   Returns whether this hostname<%> equals another hostname<%>
    (define/public (equals? rhs)
      (eqv? hostname (send rhs name)))
    
    ;; hostname<%> -> boolean
    ;;   Returns whether this hostname<%> covers another hostname<%>
    ;;   (always false)
    (define/public (covers? rhs)
      #f)
    
    ;; -> symbol
    ;;   Returns this hostname<%> as a symbol
    (define/public (name)
      hostname)
    ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Margrave Rules
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; rule% : symbol symbol (listof (listof symbol))
;;   Represents a Margrave rule
(define rule%
  (class object%
    (init-field name decision conditions)
    (super-make-object)
    
    ;; -> (listof any)
    ;;   Returns a symbol for this rule
    (define/public (text)
      `(,name =
              (,decision
               hostname
               entry-interface
               src-addr-in
               src-addr-out
               dest-addr-in
               dest-addr-out
               protocol
               message
               flags
               src-port-in
               src-port-out
               dest-port-in
               dest-port-out
               length
               next-hop
               exit-interface)
              :- ,@(textualize conditions)))
    
    ;; symbol symbol (listof (listof symbol))
    ;;   Augments a rule and changes the decision
    (define/public (augment/replace-decision new-name new-decision additional-conditions)
      (make-object rule% new-name new-decision (append conditions additional-conditions)))
    
    ;; (kindof atom<%>) -> (listof any)
    ;;   Returns the atoms of the given type that this rule contains
    (define/public (extract-atoms type)
      (filter (λ (value)
                (is-a? value type))
              (flatten conditions)))
    
    ;; -> (listof symbol)
    ;;   Returns a list of the predicate names that this rule contains
    (define/public (extract-predicates)
      '())
    
    ;; (listof any) -> (listof any)
    ;;   Converts all the atoms in a list to their textual form while
    ;;   preserving the list's structure
    (define/private (textualize atoms)
      (map (λ (value)
             (cond [(list? value) (textualize value)]
                   [(is-a? value atom<%>) (send value text)]
                   [else value]))
           atoms))
    ))

;; symbol symbol (listof symbol) (listof (listof symbol))
;;   Represents a Margrave rule with custom predicates
(define rule/predicates%
  (class* rule% ()
    (init name decision)
    (init-field predicates)
    (init conditions)
    (super-make-object name decision conditions)
    
    ;; -> (listof symbol)
    ;;   Returns a list of the predicate names that this rule contains
    (define/override (extract-predicates)
      predicates)
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interfaces
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; An interface<%> is a network interface.
;;   set-primary-address : host-address% network-address% -> interface<%>
;;     Sets the primary IP address
;;   set-secondary-address : host-address% network-address% -> interface<%>
;;     Sets the secondary IP address
;;   set-ACL-ID : symbol boolean -> interface<%>
;;     Sets the ACL ID
;;   set-NAT-side : symbol -> interface<%>
;;     Sets the side of the NAT on which this interface lies
;;   set-policy-route-map-ID : symbol -> interface<%>
;;     Sets the policy route map
;;   set-crypto-map-ID : symbol -> interface<%>
;;     Sets the crypto map
(define interface<%> (interface (atom<%>)
                       set-primary-address
                       set-secondary-address
                       set-ACL-ID
                       set-NAT-side
                       set-policy-route-map-ID
                       set-crypto-map-ID))


;; interface% : symbol host-address% network-address% host-address% network-address% symbol symbol symbol symbol symbol
;;   Represents a network interface
(define interface%
  (class* object% (interface<%>)
    (init-field name
                primary-address
                primary-network
                secondary-address
                secondary-network
                inbound-ACL-ID
                outbound-ACL-ID
                NAT-side
                policy-route-map-ID
                crypto-map-ID)
    (super-make-object)
    
    ;; -> symbol
    ;;   Returns the name for this interface
    (define/public (text)
      name)
    
    ;; -> boolean
    ;;   Returns whether this interface<%> represents a single interface
    ;;   (always true)
    (define/public (single?)
      #t)
    
    ;; interface<%> -> boolean
    ;;   Returns whether this interface<%> equals another interface<%>
    (define/public (equals? rhs)
      (eq? name (send rhs text)))
    
    ;; interface% -> boolean
    ;;   Returns whether this interface<%> covers another interface<%>
    ;;   (always false)
    (define/public (covers? rhs)
      #f)
    
    ;; host-address% network-address% -> interface<%>
    ;;   Sets the primary address and network for this interface
    (define/public (set-primary-address address network)
      (make-object interface%
        name
        address
        network
        secondary-address
        secondary-network
        inbound-ACL-ID
        outbound-ACL-ID
        NAT-side
        policy-route-map-ID
        crypto-map-ID))
    
    ;; host-address% network-address% -> interface<%>
    ;;   Sets the secondary address and network for this interface
    (define/public (set-secondary-address address network)
      (make-object interface%
        name
        primary-address
        primary-network
        address
        network
        inbound-ACL-ID
        outbound-ACL-ID
        NAT-side
        policy-route-map-ID
        crypto-map-ID))
    
    ;; symbol boolean -> interface<%>
    ;;   Sets the ID of the ACL for this interface
    (define/public (set-ACL-ID ID inbound)
      (if inbound
          (make-object interface%
            name
            primary-address
            primary-network
            secondary-address
            secondary-network
            ID
            outbound-ACL-ID
            NAT-side
            policy-route-map-ID
            crypto-map-ID)
          (make-object interface%
            name
            primary-address
            primary-network
            secondary-address
            secondary-network
            inbound-ACL-ID
            ID
            NAT-side
            policy-route-map-ID
            crypto-map-ID)))
    
    ;; symbol -> interface%
    ;;   Sets the side of NAT rules on which this interface lies
    (define/public (set-NAT-side side)
      (make-object interface%
        name
        primary-address
        primary-network
        secondary-address
        secondary-network
        inbound-ACL-ID
        outbound-ACL-ID
        side
        policy-route-map-ID
        crypto-map-ID))
    
    ;; symbol -> interface%
    ;;   Sets the ID of the route map that this interface uses for
    ;;   policy-based routing
    (define/public (set-policy-route-map-ID ID)
      (make-object interface%
        name
        primary-address
        primary-network
        secondary-address
        secondary-network
        inbound-ACL-ID
        outbound-ACL-ID
        NAT-side
        ID
        crypto-map-ID))
    
    ;; symbol -> interface%
    ;;   Sets the ID of the crypto map that this interfaces uses for VPN
    (define/public (set-crypto-map-ID ID)
      (make-object interface%
        name
        primary-address
        primary-network
        secondary-address
        secondary-network
        inbound-ACL-ID
        outbound-ACL-ID
        NAT-side
        policy-route-map-ID
        ID))
    ))

;; symbol -> interface%
;;   Returns an "empty" interface
(define (make-empty-interface interface-name)
  (make-object interface%
    interface-name
    #f
    #f
    #f
    #f
    'default
    'default
    'neither
    'default
    'default))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Access Control Lists
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; An ACE is an access control entry.
;;   rule : -> rule%
;;     Returns a rule for this entry
;;   inverse-rule/no-source : -> rule%
;;     Returns a rule that specifies the destination as the source (used only for NAT)
;;   inverse-rule/no-destination : -> rule%
;;     Returns a rule that specifies the source as the destination (used only for NAT)
(define ACE<%> (interface () rule inverse-rule/no-source inverse-rule/no-destination))

;; abstract-ACE% : number boolean address<%>
;;   The abstract base class for an ACE
(define abstract-ACE%
  (class object%
    (init-field line-no permit src-addr-in)
    (super-make-object)
    
    ;; -> symbol
    ;;   Returns the decision for this ACE
    (define/public (decision)
      (if permit
          'Permit
          'Deny))
    
    ;; -> symbol
    ;;   Returns a name for this ACE
    (define/public (name)
      (string->symbol (string-append "ACE-line-" (number->string line-no) "-" (symbol->string (gensym)))))
    ))

;; standard-ACE% : number boolean address<%>
;;   Represents a standard ACE
(define standard-ACE%
  (class* abstract-ACE% (ACE<%>)
    (init line-number permit source-addr)
    (super-make-object line-number permit source-addr)
    
    (inherit-field src-addr-in)
    (inherit decision)
    (inherit name)
    
    ;; (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE
    (define/public (rule additional-conditions)
      (make-object
          rule%
        (name)
        (decision)
        `(,@additional-conditions
          (,src-addr-in src-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the source address bound (used only for NAT)
    (define/public (inverse-rule/no-source new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,src-addr-in dest-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the pre-translated source address bound (used only for NAT)
    (define/public (inverse-rule/no-source2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,src-addr-in dest-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions)))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the pre-translated destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,src-addr-in dest-addr-out))))
    ))

;; extended-ACE-IP% : number boolean address protocol address
;;   Represents an extended ACE for IP
(define extended-ACE-IP%
  (class* abstract-ACE% (ACE<%>)
    (init line-number permit source-addr)
    (init-field dest-addr-in)
    (super-make-object line-number permit source-addr)
    
    (inherit-field src-addr-in)
    (inherit decision)
    (inherit name)
    
    ;; (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE
    (define/public (rule additional-conditions)
      (make-object rule%
        (name)
        (decision)
        `(,@additional-conditions
          (,src-addr-in src-addr-in)
          (,dest-addr-in dest-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted
    ;;   but without the source address bound (used only for NAT)
    (define/public (inverse-rule/no-source new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,src-addr-in dest-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted
    ;;   but without the pre-translated source address bound (used only for NAT)
    (define/public (inverse-rule/no-source2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-out)
          (,src-addr-in dest-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the pre-translated destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-in)
          (,src-addr-in dest-addr-out))))
    ))

;; extended-ACE-ICMP% : number boolean address message address
;;   Represents an extended ACE for ICMP
(define extended-ACE-ICMP%
  (class* abstract-ACE% (ACE<%>)
    (init line-number permit source-addr)
    (init-field msg dest-addr-in)
    (super-make-object line-number permit source-addr)
    
    (inherit-field src-addr-in)
    (inherit decision)
    (inherit name)
    
    ;; (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE
    (define/public (rule additional-conditions)
      (make-object rule%
        (name)
        (decision)
        `(,@additional-conditions
          (,src-addr-in src-addr-in)
          (prot-ICMP protocol)
          (,msg message)
          (,dest-addr-in dest-addr-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted
    ;;   but without the source address bound (used only for NAT)
    (define/public (inverse-rule/no-source new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,src-addr-in dest-addr-in)
          (prot-ICMP protocol)
          (,msg message))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted
    ;;   but without the pre-translated source address bound (used only for NAT)
    (define/public (inverse-rule/no-source2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-out)
          (,src-addr-in dest-addr-in)
          (prot-ICMP protocol)
          (,msg message))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-in)
          (prot-ICMP protocol)
          (,msg message))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the pre-translated destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-in)
          (,src-addr-in dest-addr-out)
          (prot-ICMP protocol)
          (,msg message))))
    ))

;; extended-ACE-TCP/UDP% : number boolean address protocol port address port
;;   Represents an extended ACE for TCP/UDP
(define extended-ACE-TCP/UDP%
  (class* abstract-ACE% (ACE<%>)
    (init line-number permit source-addr)
    (init-field prot src-port-in dest-addr-in dest-port-in)
    (super-make-object line-number permit source-addr)
    
    (inherit-field src-addr-in)
    (inherit decision)
    (inherit name)
    
    ;; (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE
    (define/public (rule additional-conditions)
      (make-object rule%
        (name)
        (decision)
        `(,@additional-conditions
          (,src-addr-in src-addr-in)
          (,prot protocol)
          (,src-port-in src-port-in)
          (,dest-addr-in dest-addr-in)
          (,dest-port-in dest-port-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted
    ;;   but without the source address bound (used only for NAT)
    (define/public (inverse-rule/no-source new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,src-addr-in dest-addr-in)
          (,prot protocol)
          (,dest-port-in src-port-in)
          (,src-port-in dest-port-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted
    ;;   but without the pre-translated source address bound (used only for NAT)
    (define/public (inverse-rule/no-source2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-out)
          (,src-addr-in dest-addr-in)
          (,prot protocol)
          (,dest-port-in src-port-in)
          (,src-port-in dest-port-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-in)
          (,prot protocol)
          (,src-port-in dest-port-in)
          (,dest-port-in src-port-in))))
    
    ;; symbol (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE with source and destination inverted,
    ;;   but without the pre-translated destination address bound (used only for NAT)
    (define/public (inverse-rule/no-destination2 new-name additional-conditions)
      (make-object rule%
        new-name
        (decision)
        `(,@additional-conditions
          (,dest-addr-in src-addr-in)
          (,src-addr-in dest-addr-out)
          (,prot protocol)
          (,src-port-in dest-port-in)
          (,dest-port-in src-port-in))))
    ))

;; extended-ACE-TCP/flags% : number boolean address port address port (listof symbol)
;;   Represents an extended ACE for TCP with flags
(define extended-ACE-TCP/flags%
  (class* extended-ACE-TCP/UDP% (ACE<%>)
    (init line-number permit source-addr source-port dest-addr dest-port flags)
    (super-make-object line-number permit source-addr 'tcp source-port dest-addr dest-port)
    
    (inherit-field src-addr-in)
    (inherit-field src-port-in)
    (inherit-field prot)
    (inherit-field dest-addr-in)
    (inherit-field dest-port-in)
    
    (define flag-conditions (map (λ (flag)
                                   `(,flag flag))
                                 flags))
    
    ;; (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE
    (define/override (rule additional-conditions)
      (super rule (append flag-conditions additional-conditions)))
    ))

;; extended-reflexive-ACE-TCP/UDP% : number boolean address protocol port address port symbol
;;   Represents an extended ACE for TCP/UDP
(define extended-reflexive-ACE-TCP/UDP%
  (class* extended-ACE-TCP/UDP% (ACE<%>)
    (init line-number permit source-addr protocol source-port dest-addr dest-port)
    (init-field ACL-name)
    (super-make-object line-number permit source-addr protocol source-port dest-addr dest-port)
    
    (inherit-field src-addr-in)
    (inherit-field src-port-in)
    (inherit-field prot)
    (inherit-field dest-addr-in)
    (inherit-field dest-port-in)
    (inherit decision)
    (inherit name)
    
    ;; (listof (listof symbol)) -> rule%
    ;;   Returns a rule that represents this ACE
    (define/override (rule additional-conditions)
      (make-object rule/predicates%
        (name)
        (decision)
        (list (connection-predicate))
        `(,@additional-conditions
          (,(connection-predicate) ,src-addr-in ,src-port-in ,prot ,dest-addr-in ,dest-port-in)
          (,src-addr-in src-addr-in)
          (,prot protocol)
          (,src-port-in src-port-in)
          (,dest-addr-in dest-addr-in)
          (,dest-port-in dest-port-in))))
    
    ;; -> symbol
    ;;   Returns the name of the connection predicate for this rule
    (define/private (connection-predicate)
      (string->symbol (string-append "Connection-" (symbol->string ACL-name))))
    ))

;; ACL% : (listof ACE<%>)
;;   Represents an ACL
(define ACL%
  (class* object% ()
    (init-field ACEs)
    (super-make-object)
    
    ;; ACE<%> -> ACL%
    (define/public (insert-ACE ace)
      (make-object ACL% (append ACEs (list ace))))
    
    ;; ACL<%> -> ACL<%>
    (define/public (insert-ACL acl)
      (make-object ACL% (append ACEs (get-field ACEs acl))))
    
    ;; (listof (listof symbol)) -> rules%
    ;;   Returns a list of rules that represents this ACL
    (define/public (rules additional-conditions)
      (map (λ (ACE)
             (send ACE rule additional-conditions))
           ACEs))
    
    ;; symbol (listof (listof symbol)) -> rules%
    ;;   Returns a list of rules that represents this ACL with source and destination inverted,
    ;;   but with the source address unbound (used only for NAT)
    (define/public (inverse-rules/no-source new-name additional-conditions)
      (map (λ (ACE)
             (send ACE inverse-rule/no-source new-name additional-conditions))
           ACEs))
    
    ;; symbol (listof (listof symbol)) -> rules%
    ;;   Returns a list of rules that represents this ACL with source and destination inverted,
    ;;   but with the pre-translated source address unbound (used only for NAT)
    (define/public (inverse-rules/no-source2 new-name additional-conditions)
      (map (λ (ACE)
             (send ACE inverse-rule/no-source2 new-name additional-conditions))
           ACEs))
    
    ;; symbol (listof (listof symbol)) -> rules%
    ;;   Returns a list of rules that represents this ACL with source and destination inverted,
    ;;   but with the destination address unbound (used only for NAT)
    (define/public (inverse-rules/no-destination new-name additional-conditions)
      (map (λ (ACE)
             (send ACE inverse-rule/no-destination new-name additional-conditions))
           ACEs))
    
    ;; symbol (listof (listof symbol)) -> rules%
    ;;   Returns a list of rules that represents this ACL with source and destination inverted,
    ;;   but with the pre-translated destination address unbound (used only for NAT)
    (define/public (inverse-rules/no-destination2 new-name additional-conditions)
      (map (λ (ACE)
             (send ACE inverse-rule/no-destination2 new-name additional-conditions))
           ACEs))
    ))

;; -> ACL%
;;   Returns an "empty" ACL
(define (make-empty-ACL)
  (make-object ACL% '()))

;; The default ACL for an interface
(define default-ACL
  (make-object ACL%
    (list
     (make-object standard-ACE% 0 #t (make-object network-address% '0.0.0.0 '255.255.255.255 #t)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Maps
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define set-action<%> (interface () rules))

;; abstract-map% : (listof symbol) (listof number)
;;   Abstract base class of maps
(define abstract-map%
  (class object%
    (init-field match-ACL-IDs match-lengths)
    (super-make-object)
    
    ;; (hashtable symbol ACL%) -> (listof ACL%)
    ;;   Returns a list of the ACLs used in match conditions for this map
    (define (match-ACLs ACLs)
      (if (empty? match-ACL-IDs)
          (list (make-empty-ACL))
          (map (λ (ACL-ID)
                 (hash-ref ACLs ACL-ID))
               match-ACL-IDs)))
    
    ;; -> (listof (listof symbol))
    ;;   Returns a list of length conditions used in match conditions for this map
    (define (match-length-conditions)
      (map (λ (length)
             `((,length length)))
           match-lengths))
    
    ;; (hashtable symbol ACL%) (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of the rules that represent the match conditions for this map
    (define/public (match-rules ACLs additional-conditions)
      (append*
       (map (λ (ACL)
              (send ACL
                    rules
                    `(,@additional-conditions
                      ,@(match-length-conditions))))
            (match-ACLs ACLs))))
    
    ;; symbol (hashtable symbol ACL%) (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of the rules that represent the match conditions for this map
    ;;   with source and destination inverted, but with the source address unbound
    ;;   (used only for NAT)
    (define/public (inverse-match-rules/no-source new-name ACLs additional-conditions)
      (append*
       (map (λ (ACL)
              (send ACL
                    inverse-rules/no-source
                    new-name
                    `(,@additional-conditions
                      ,@(match-length-conditions))))
            (match-ACLs ACLs))))
    
    ;; symbol (hashtable symbol ACL%) (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of the rules that represent the match conditions for this map
    ;;   with source and destination inverted, but with the destination address unbound
    ;;   (used only for NAT)
    (define/public (inverse-match-rules/no-destination new-name ACLs additional-conditions)
      (append*
       (map (λ (ACL)
              (send ACL
                    inverse-rules/no-destination
                    new-name
                    `(,@additional-conditions
                      ,@(match-length-conditions))))
            (match-ACLs ACLs))))
    ))

;; map-set% : (hashtable number abstract-map%)
;;   A collection of maps with a similar tag
(define map-set%
  (class object%
    (init-field maps)
    (super-make-object)
    
    ;; number abstract-map% -> map-set%
    ;;   Inserts a map with the given priority into this set
    (define/public (insert-map sequence-num map)
      (make-object map-set%
        (hash-set maps sequence-num map)))
    
    ;; number -> abstract-map%
    ;;   Returns the map with the given sequence number
    (define/public (get-map sequence-num)
      (hash-ref maps sequence-num))
    
    ;; number abstract-map% -> abstract-map%
    ;;   Returns the map with the given sequence number, or the
    ;; supplied default if no such map exists
    (define/public (get-map/default sequence-num default-map)
      (hash-ref maps sequence-num default-map))
    
    ;; -> (listof abstract-map%)
    ;;   Returns a list of the maps in this map set in sequential order
    (define/public (ordered-maps)
      (map (λ (sequence-num)
             (hash-ref maps sequence-num))
           (sort (hash-map maps
                           (λ (sequence-num map)
                             sequence-num))
                 <)))
    ))
    
;; -> map-set%
;;   Returns an empty map set
(define (make-empty-map-set)
  (make-object map-set% (make-immutable-hash '())))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Network Address Translation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define NAT<%> (interface () forward-rules reverse-rules))

;; abstract-NAT% : number boolean
;;   The abstract base class for a NAT
(define abstract-NAT%
  (class object%
    (init-field line-no inside)
    (super-make-object)
    
    ;; rule% -> symbol
    ;;   Returns a name for this match-rule-based NAT
    (define/public (augmented-name match-rule)
      (string->symbol (string-append "NAT-line-"
                                     (number->string line-no)
                                     "-"
                                     (symbol->string (get-field name match-rule))
                                     (symbol->string (gensym)))))
    
    ;; -> symbol
    ;;   Returns the direction for this NAT
    (define/public (direction)
      (if inside
          'inside
          'outside))
    
    ;; -> symbol
    ;;   Returns a name for this NAT
    (define/public (name)
      (string->symbol (string-append "NAT-line-"
                                     (number->string line-no)
                                     "-"
                                     (symbol->string (gensym)))))
    
    ;; -> symbol
    ;;   Returns the reverse direction for this NAT
    (define/public (reverse-direction)
      (if inside
          'outside
          'inside))
    ))

;; source-list-NAT% : number boolean symbol symbol
;;   Represents a source route map translation
(define source-list-NAT%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field ACL-ID interface-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) src-addr-out)
                           (= dest-addr-in dest-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-out))
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     '())))
           (send (hash-ref ACLs ACL-ID)
                 rules
                 additional-conditions))))
    
    ;; (hash-table symbol route-map%) (hash-table symbol ACL%) (hash-table symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (if (eqv? (get-field decision match-rule) 'Permit)
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) dest-addr-in)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) dest-addr-in))))
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         `()))))
            (send (hash-ref ACLs ACL-ID)
                  inverse-rules/no-destination2
                  (name)
                  additional-conditions))))
    ))

;; source-map-NAT% : number boolean symbol symbol
;;   Represents a source route map translation
(define source-map-NAT%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field route-map-ID interface-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) src-addr-out)
                           (= dest-addr-in dest-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-in))
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     '())))
            (flatten (map (λ (m)
                           (send m match-rules ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (if (eqv? (get-field decision match-rule) 'Permit)
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) dest-addr-in)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) dest-addr-in))))
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         '()))))
            (flatten (map (λ (m)
                           (send m inverse-match-rules/no-destination2 (name) ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    ))

;; destination-list-NAT% : number boolean symbol symbol
;;   Represents a destination route map translation
(define destination-list-NAT%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field ACL-ID interface-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) dest-addr-out)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-in))
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     '())))
            (send (hash-ref ACLs ACL-ID)
                  rules
                  additional-conditions))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) src-addr-in)
                           (= dest-addr-in dest-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-out))
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     '())))
            (send (hash-ref ACLs ACL-ID)
                  inverse-rules/no-source2
                  (name)
                  additional-conditions))))
    ))

;; destination-map-NAT% : number boolean symbol symbol
;;   Represents a destination route map translation
(define destination-map-NAT%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field route-map-ID interface-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) dest-addr-out)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-in))
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))))
            (flatten (map (λ (m)
                           (send m match-rules ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,(get-field primary-address (hash-ref interfaces interface-ID)) src-addr-in)
                           (= dest-addr-in dest-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-out))
                         `((= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))))
            (flatten (map (λ (m)
                           (send m inverse-match-rules/no-source2 (name) ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    ))

;; static-source-NAT-IP% : number boolean address<%> address<%>
;;   Represents a static source translation at the network layer
(define static-source-NAT-IP%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-src-addr-in to-src-addr-in)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,from-src-addr-in src-addr-in)
           (,to-src-addr-in src-addr-out)
           (= dest-addr-in dest-addr-out)
           (= src-port-in src-port-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,from-src-addr-in src-addr-in)))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,to-src-addr-in dest-addr-in)
           (,from-src-addr-in dest-addr-out)
           (= src-addr-in src-addr-out)
           (= src-port-in src-port-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,to-src-addr-in dest-addr-in)))))
    ))

;; static-source-NAT-TCP/UDP% : number boolean address<%> port<%> symbol address<%> port<%>
;;   Represents a static source translation at the network and transport layers
(define static-source-NAT-TCP/UDP%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-src-addr-in from-src-port-in prot to-src-addr-in to-src-port-in)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,from-src-addr-in src-addr-in)
           (,to-src-addr-in src-addr-out)
           (= dest-addr-in dest-addr-out)
           (,prot protocol)
           (,from-src-port-in src-port-in)
           (,to-src-port-in src-port-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,from-src-addr-in src-addr-in)
           (,from-src-port-in src-port-in)))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,to-src-addr-in dest-addr-in)
           (,from-src-addr-in dest-addr-out)
           (,prot protocol)
           (,to-src-port-in dest-port-in)
           (,from-src-port-in dest-port-out)
           (= src-addr-in src-addr-out)
           (= src-port-in src-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,to-src-addr-in dest-addr-in)
           (,to-src-port-in dest-port-in)))))
    ))

;; static-source-NAT-TCP/UDP-interface% : number boolean address<%> port<%> symbol port<%> symbol
;;   Represents a static source translation at the network and transport layers
(define static-source-NAT-TCP/UDP-interface%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-src-addr-in from-src-port-in prot port interface-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,from-src-addr-in src-addr-in)
           (,(hash-ref interfaces interface-ID) src-addr-out)
           (= dest-addr-in dest-addr-out)
           (,prot protocol)
           (,from-src-port-in src-port-in)
           (= src-port-in src-port-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,from-src-addr-in src-addr-in)
           (,from-src-port-in src-port-in)))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,(hash-ref interfaces interface-ID) dest-addr-in)
           (,from-src-addr-in dest-addr-out)
           (,prot protocol)
           (,from-src-port-in dest-port-in)
           (= dest-port-in dest-port-out)
           (= src-addr-in src-addr-out)
           (= src-port-in src-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,(hash-ref interfaces interface-ID) dest-addr-in)
           (,from-src-port-in dest-port-in)))))
    ))

;; static-destination-NAT-IP% : number boolean address<%> address<%>
;;   Represents a static destination translation at the network layer
(define static-destination-NAT-IP%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-dest-addr-in to-dest-addr-in)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,from-dest-addr-in dest-addr-in)
           (,to-dest-addr-in dest-addr-out)
           (= src-addr-in src-addr-out)
           (= src-port-in src-port-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,from-dest-addr-in dest-addr-in)))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,to-dest-addr-in src-addr-in)
           (,from-dest-addr-in src-addr-out)
           (= dest-addr-in dest-addr-out)
           (= src-port-in src-port-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,to-dest-addr-in src-addr-in)))))
    ))

;; static-destination-NAT-TCP/UDP% : number boolean address<%> port<%> symbol address<%> port<%>
;;   Represents a static destination translation at the network layer
(define static-destination-NAT-TCP/UDP%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-dest-addr-in from-dest-port-in prot to-dest-addr-in to-dest-port-in)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,from-dest-addr-in dest-addr-in)
           (,to-dest-addr-in dest-addr-out)
           (,from-dest-port-in dest-port-in)
           (,to-dest-port-in dest-port-out)
           (,prot protocol)
           (= src-addr-in src-addr-out)
           (= src-port-in src-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,from-dest-addr-in dest-addr-in)
           (,from-dest-port-in dest-port-in)))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,to-dest-addr-in src-addr-in)
           (,from-dest-addr-in src-addr-out)
           (,to-dest-port-in src-port-in)
           (,from-dest-port-in src-port-out)
           (,prot protocol)
           (= dest-addr-in dest-addr-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,to-dest-addr-in src-addr-in)
           (,to-dest-port-in src-port-in)))))
    ))

;; static-destination-NAT-TCP/UDP-interface% : number boolean address<%> port<%> symbol symbol
;;   Represents a static destination translation at the network layer
(define static-destination-NAT-TCP/UDP-interface%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-dest-addr-in from-dest-port-in prot interface-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,from-dest-addr-in dest-addr-in)
           (,(hash-ref interfaces interface-ID) dest-addr-out)
           (,from-dest-port-in dest-port-in)
           (= dest-port-in dest-port-out)
           (,prot protocol)
           (= src-addr-in src-addr-out)
           (= src-port-in src-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,from-dest-addr-in dest-addr-in)
           (,from-dest-port-in dest-port-in)))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (list
       (make-object rule%
         (name)
         'Translate
         `(,@additional-conditions
           (,(hash-ref interfaces interface-ID) src-addr-in)
           (,from-dest-addr-in src-addr-out)
           (,from-dest-port-in src-port-in)
           (= src-port-in src-port-out)
           (,prot protocol)
           (= dest-addr-in dest-addr-out)
           (= dest-port-in dest-port-out)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,(hash-ref interfaces interface-ID) src-addr-in)
           (,from-dest-port-in src-port-in)))))
    ))

;; static-source-map-NAT% : number boolean host-address% host-address% symbol
;;   Represents a static source route map translation
(define static-source-map-NAT%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-src-addr-in to-src-addr-in route-map-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,from-src-addr-in src-addr-in)
                           (,to-src-addr-in src-addr-out)
                           (= dest-addr-in dest-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-in))
                         `((,from-src-addr-in src-addr-in)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     `((,from-src-addr-in src-addr-in)))))
            (flatten (map (λ (m)
                           (send m match-rules ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (if (eqv? (get-field decision match-rule) 'Permit)
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((,to-src-addr-in dest-addr-in)
                           (,from-src-addr-in dest-addr-out)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         `((,to-src-addr-in dest-addr-in))))
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((,from-src-addr-in dest-addr-in)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         `((,from-src-addr-in dest-addr-in))))))
            (flatten (map (λ (m)
                           (send m inverse-match-rules/no-destination (name) ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    ))

;; static-destination-map-NAT% : number boolean host-address% host-address% symbol
;;   Represents a static destination route map translation
(define static-destination-map-NAT%
  (class* abstract-NAT% (NAT<%>)
    (init line-number inside)
    (init-field from-dest-addr-in to-dest-addr-in route-map-ID)
    (super-make-object line-number inside)
    
    (inherit augmented-name)
    (inherit name)
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the forward direction for this NAT
    (define/public (forward-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (augmented-name match-rule)
                     'Translate
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,from-dest-addr-in dest-addr-in)
                           (,to-dest-addr-in dest-addr-out)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-in))
                         `((,from-dest-addr-in dest-addr-in)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out))))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     `((,from-dest-addr-in dest-addr-in)))))
            (flatten (map (λ (m)
                           (send m match-rules ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    
    ;; (hashtable symbol route-map%) (hashtable symbol ACL%) (hashtable symbol interface%)
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of rules for the reverse direction for this NAT
    (define/public (reverse-rules route-maps ACLs interfaces additional-conditions)
      (append
       (map (λ (match-rule)
              (if (eqv? (get-field decision match-rule) 'Permit)
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((,to-dest-addr-in src-addr-in)
                           (,from-dest-addr-in src-addr-out)
                           (= dest-addr-in dest-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         `((,to-dest-addr-in src-addr-in))))
                  (list
                   (send match-rule
                         augment/replace-decision
                         (augmented-name match-rule)
                         'Translate
                         `((,from-dest-addr-in src-addr-in)
                           (= src-addr-in src-addr-out)
                           (= src-port-in src-port-out)
                           (= dest-addr-in dest-addr-out)
                           (= dest-port-in dest-port-out)))
                   (send match-rule
                         augment/replace-decision
                         (name)
                         'Drop
                         `((,from-dest-addr-in src-addr-in))))))
            (flatten (map (λ (m)
                           (send m inverse-match-rules/no-source (name) ACLs additional-conditions))
                         (send (hash-ref route-maps route-map-ID) ordered-maps))))))
    ))

;; The default NAT rule
(define default-NAT-rule
  (make-object rule%
    (string->symbol (string-append "default-NAT-" (symbol->string (gensym))))
    'Translate
    `((= src-addr-in src-addr-out)
      (= dest-addr-in dest-addr-out)
      (= src-port-in src-port-out)
      (= dest-port-in dest-port-out))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Static Routing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define static-route<%> (interface () rules))

;; abstract-static-route% : number
;;   The abstract base class for a static route
(define abstract-static-route%
  (class object%
    (init-field line-no)
    (super-make-object)
    
    ;; -> symbol
    ;;   Returns a name for this route
    (define/public (name)
      (string->symbol (string-append "route-line-"
                                     (number->string line-no)
                                     "-"
                                     (symbol->string (gensym)))))
    ))

;; static-route-gateway% : number address address
;;   Represents a static route via a gateway address
(define static-route-gateway%
  (class* abstract-static-route% (static-route<%>)
    (init line-number)
    (init-field dest-addr-in next-hop)
    (super-make-object line-number)
    
    (inherit name)
    
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns the rules for this route
    (define/public (rules additional-conditions)
      (list
       (make-object rule%
         (name)
         'Route
         `(,@additional-conditions
           (,dest-addr-in dest-addr-in)
           (,next-hop next-hop)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,dest-addr-in dest-addr-in)))))
      ))

;; static-route-interface% : number address interface
;;   Represents a static route via an interface
(define static-route-interface%
  (class* abstract-static-route% (static-route<%>)
    (init line-number)
    (init-field dest-addr-in next-hop)
    (super-make-object line-number)
    
    (inherit name)
    
    ;; (listof (listof symbol)) -> (listof rule%)
    ;;   Returns the rules for this route
    (define/public (rules additional-conditions)
      (list
       (make-object rule%
         (name)
         'Forward
         `(,@additional-conditions
           (,dest-addr-in dest-addr-in)
           ; -TN added next-hop restriction below
           (= next-hop dest-addr-out)
           (,next-hop exit-interface)
           ; -TN Changed ip-n/a to IPAddress. Probably can be removed entirely.
           (IPAddress next-hop)))
       (make-object rule%
         (name)
         'Drop
         `(,@additional-conditions
           (,dest-addr-in dest-addr-in)))))
    ))

;; The default routing rule
(define default-routing-rule
  (make-object rule%
    (string->symbol (string-append "default-route-" (symbol->string (gensym))))
    'Pass
    `(true)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Route Maps
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; route-map% : (listof symbol) (listof number) set-action<%> set-action<%>
;;   Represents a route map
(define route-map%
  (class* abstract-map% ()
    (init ACL-IDs lengths)
    (init-field next-hop default-next-hop)
    (super-make-object ACL-IDs lengths)
    
    (inherit-field match-ACL-IDs match-lengths)
    (inherit match-rules)
    
    ;; symbol -> route-map%
    ;;   Inserts an ACL ID as a match condition for this map
    (define/public (insert-match-ACL-ID ACL-ID)
      (make-object route-map%
        (append match-ACL-IDs (list ACL-ID))
        match-lengths
        next-hop
        default-next-hop))
    
    ;; number -> route-map%
    ;;   Inserts a packet length as a match condition for this map
    (define/public (insert-match-length length)
      (make-object route-map%
        match-ACL-IDs
        (append match-lengths (list length))
        next-hop
        default-next-hop))
    
    ;; set-action<%> -> route-map%
    ;;   Sets the next hop for this route map
    (define/public (set-next-hop action)
      (make-object route-map%
        match-ACL-IDs
        match-lengths
        action
        default-next-hop))
    
    ;; set-action<%> -> route-map%
    ;;   Sets the default next hop for this route map
    (define/public (set-default-next-hop action)
      (make-object route-map%
        match-ACL-IDs
        match-lengths
        next-hop
        action))
    
    ;; (hashtable symbol ACL%) (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of the routing rules that this map contains
    (define/public (routing-rules ACLs additional-conditions)
      (send next-hop rules (match-rules ACLs additional-conditions)))
    
    ;; (hashtable symbol ACL%) (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of the default routing rules that this map contains
    (define/public (default-routing-rules ACLs additional-conditions)
      (send default-next-hop rules (match-rules ACLs additional-conditions)))
    ))

;; next-hop-gateway% : number address boolean
;;   Represents the next hop address in a route map
(define next-hop-gateway%
  (class* object% (set-action<%>)
    (init-field line-no next-hop)
    (super-make-object)
    
    ;; (listof rule%) -> (listof rule%)
    ;;   Returns a list of the rules for this set action
    (define/public (rules match-rules)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (name)
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         'Route
                         'Pass)
                     `((,next-hop next-hop)))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     '())))
            match-rules)))
    
    ;; -> symbol
    ;;   Returns a name for this set-action<%>
    (define/private (name)
      (string->symbol (string-append "next-hop-line-"
                                     (number->string line-no)
                                     "-"
                                     (symbol->string (gensym)))))
    ))

;; next-hop-interface : number symbol boolean
;;   Represents the next hop interface in a route map
(define next-hop-interface%
  (class* object% (set-action<%>)
    (init-field line-no next-hop)
    (super-make-object)
    
    ;; (listof rule%) -> (listof rule%)
    ;;   Returns a list of the rules for this set action
    (define/public (rules match-rules)
      (append
       (map (λ (match-rule)
              (list
               (send match-rule
                     augment/replace-decision
                     (name)
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         'Forward
                         'Pass)
                     (if (eqv? (get-field decision match-rule) 'Permit)
                         `((,next-hop exit-interface)
                           ; -TN added next-hop restriction and this if statement
                           (= next-hop dest-addr-out)
                           ; -TN Changed ip-n/a to IPAddress. Probably can be removed entirely.
                       (IPAddress next-hop))
                         `((,next-hop exit-interface)
                          ; -TN Changed ip-n/a to IPAddress. Probably can be removed entirely.
                       (IPAddress next-hop))))
               (send match-rule
                     augment/replace-decision
                     (name)
                     'Drop
                     '())))
            match-rules)))
    
    ;; -> symbol
    ;;   Returns a name for this set-action<%>
    (define/private (name)
      (string->symbol (string-append "next-hop-line-"
                                     (number->string line-no)
                                     "-"
                                     (symbol->string (gensym)))))
    ))

;; The default routing action
(define default-routing-action%
  (class* object% (set-action<%>)
    (super-make-object)
    
    ;; (listof rule%) -> (listof rule%)
    ;;   Returns a list of the rules for this set action
    (define/public (rules match-rules)
      (map (λ (match-rule)
             (send match-rule
                   augment/replace-decision
                   (string->symbol (string-append "default-route-" (symbol->string (gensym))))
                   'Pass
                   `(true)))
           match-rules))
    ))

;; -> route-map%
;;   Returns an empty route map
(define (make-empty-route-map)
  (make-object route-map%
    '()
    '()
    (make-object default-routing-action%)
    (make-object default-routing-action%)))

;; The default route map
(define default-route-map (make-empty-route-map))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Border Gateway Protocol
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define neighbor<%> (interface () rule))

(define neighbor%
  (class* object% (neighbor<%>)
    (init-field line-no address remote-as-num)
    (super-make-object)
    
    (define/public (rule conditions)
      (make-object rule%
        (string->symbol (string-append "BGP-line-"
                                       (number->string line-no)
                                       "-"
                                       (symbol->string (gensym))))
        'Advertise
        `(,@conditions
          (,address next-hop))))
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Virtual Private Networks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define endpoint<%> (interface () rule))

(define preshared-key-endpoint%
  (class* object% (endpoint<%>)
    (init-field line-no key address)
    (super-make-object)
    
    (define/public (name)
      (string->symbol (string-append "endpoint-line-"
                                     (number->string line-no)
                                     "-"
                                     (symbol->string (gensym)))))
    
    (define/public (rule conditions)
      (make-object rule%
        (name)
        'Encrypt
        `(,@conditions
          (,address next-hop))))
    ))

;; crypto-map% : (listof symbol) (listof number) host-address%
;;   Represents a crypto map
(define crypto-map%
  (class abstract-map%
    (init ACL-IDs lengths)
    (init-field peer-endpoint)
    (super-make-object ACL-IDs lengths)
    
    (inherit-field match-ACL-IDs match-lengths)
    (inherit match-rules)
    
    ;; symbol -> crypto-map%
    ;;   Inserts an ACL ID as a match condition for this map
    (define/public (insert-match-ACL-ID ACL-ID)
      (make-object crypto-map%
        (append match-ACL-IDs (list ACL-ID))
        match-lengths
        peer-endpoint))
    
    ;; number -> crypto-map%
    ;;   Inserts a packet length as a match condition for this map
    (define/public (insert-match-length length)
      (make-object crypto-map%
        match-ACL-IDs
        (append match-lengths (list length))
        peer-endpoint))
    
    ;; (hash-table symbol ACL%) (listof (listof symbol)) -> (listof rule%)
    ;;   Returns a list of encryption rules that this map contains
    (define/public (encryption-rules ACLs additional-conditions)
      (map (λ (match-rule)
             (send match-rule
                   augment/replace-decision
                   (string->symbol (string-append "crypto-map-"
                                                  (symbol->string (get-field name match-rule))
                                                  "-"
                                                  (symbol->string (gensym))))
                   'Encrypt
                   '()))
           (match-rules ACLs additional-conditions)))
    
    ;; host-address% -> crypto-map%
    ;;   Sets the tunnel endpoint for this map
    (define/public (set-peer-endpoint address)
      (make-object crypto-map%
        match-ACL-IDs
        match-lengths
        peer-endpoint))
    ))

;; -> crypto-map%
;;   Returns an empty crypto map
(define (make-empty-crypto-map)
  (make-object crypto-map%
    '()
    '()
    #f))

;; The default crypto map
(define default-crypto-map (make-empty-crypto-map))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configurations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define IOS-config%
  (class* object% ()
    (init-field hostname
                interfaces
                ACLs
                static-NAT
                dynamic-NAT
                static-routes
                route-maps
                networks
                neighbors
                endpoints
                crypto-maps
                default-ACL-permit)
    (super-make-object)
    
    ;; hostname% -> IOS-config%
    (define/public (set-hostname name)
      (make-object IOS-config%
        name
        interfaces
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol address<%> -> IOS-config%
    ;;   Sets the primary address for an interface
    (define/public (set-primary-interface-address name address network)
      (make-object IOS-config%
        hostname
        (hash-set interfaces
                  name
                  (send (hash-ref interfaces name (λ () (make-empty-interface name)))
                        set-primary-address
                        address
                        network))
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol address<%> -> IOS-config%
    ;;   Sets the secondary address for an interface
    (define/public (set-secondary-interface-address name address network)
      (make-object IOS-config%
        hostname
        (hash-set interfaces
                  name
                  (send (hash-ref interfaces name (λ () (make-empty-interface name)))
                        set-secondary-address
                        address
                        network))
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol symbol boolean -> IOS-config%
    ;;   Sets the ACL for an interface
    (define/public (set-interface-ACL name ACL-ID inbound)
      (make-object IOS-config%
        hostname
        (hash-set interfaces
                  name
                  (send (hash-ref interfaces name (λ () (make-empty-interface name)))
                        set-ACL-ID
                        ACL-ID
                        inbound))
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol symbol -> IOS-config%
    ;;   Sets the NAT side for an interface
    (define/public (set-interface-NAT-side name side)
      (make-object IOS-config%
        hostname
        (hash-set interfaces
                  name
                  (send (hash-ref interfaces name (λ () (make-empty-interface name)))
                        set-NAT-side
                        side))
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol symbol -> IOS-config%
    ;;   Sets the policy route map for an interface
    (define/public (set-interface-policy-route-map-ID name ID)
      (make-object IOS-config%
        hostname
        (hash-set interfaces
                  name
                  (send (hash-ref interfaces name (λ () (make-empty-interface name)))
                        set-policy-route-map-ID
                        ID))
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol symbol -> IOS-config%
    ;;   Sets the crypto map for an interface
    (define/public (set-interface-crypto-map-ID name ID)
      (make-object IOS-config%
        hostname
        (hash-set interfaces
                  name
                  (send (hash-ref interfaces name (λ () (make-empty-interface name)))
                        set-crypto-map-ID
                        ID))
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol ACE<%> -> IOS-config%
    ;;   Inserts an ACE into an ACL
    (define/public (insert-ACE ACL-ID ACE)
      (make-object IOS-config%
        hostname
        interfaces
        (hash-set ACLs
                  ACL-ID
                  (send (hash-ref ACLs ACL-ID make-empty-ACL)
                        insert-ACE
                        ACE))
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol ACE<%> -> IOS-config%
    ;;   Evaluates a reflexive ACL
    (define/public (insert-reflexive-ACL ACL-ID reflexive-ACL-ID)
      (make-object IOS-config%
        hostname
        interfaces
        (hash-set ACLs
                  ACL-ID
                  (send (hash-ref ACLs ACL-ID make-empty-ACL)
                        insert-ACL
                        (hash-ref ACLs reflexive-ACL-ID make-empty-ACL)))
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; NAT<%> -> IOS-config%
    ;;   Inserts a static NAT rule into the configuration
    (define/public (insert-static-NAT translation)
      (make-object IOS-config%
        hostname
        interfaces
        ACLs
        (append static-NAT (list translation))
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; NAT<%> -> IOS-config%
    ;;   Inserts a dynamic NAT rule into the configuration
    (define/public (insert-dynamic-NAT translation)
      (make-object IOS-config%
        hostname
        interfaces
        ACLs
        static-NAT
        (append dynamic-NAT (list translation))
        static-routes
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; static-route<%> -> IOS-config%
    ;;   Inserts a static route rule into the configuration
    (define/public (insert-static-route route)
      (make-object IOS-config%
        hostname
        interfaces
        ACLs
        static-NAT
        dynamic-NAT
        (append static-routes (list route))
        route-maps
        networks
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; symbol symbol -> IOS-config%
    ;   Inserts an ACL into the match rules for a route map
    (define/public (insert-route-map-match-ACL-ID name sequence-num ACL-ID)
      (let* [(map-set (hash-ref route-maps name make-empty-map-set))
             (route-map (send map-set get-map/default sequence-num default-route-map))]
        (make-object IOS-config%
          hostname
          interfaces
          ACLs
          static-NAT
          dynamic-NAT
          static-routes
          (hash-set route-maps
                    name
                    (send map-set
                          insert-map
                          sequence-num
                          (send route-map
                                insert-match-ACL-ID
                                ACL-ID)))
          networks
          neighbors
          endpoints
          crypto-maps
          default-ACL-permit)))
    
    ;; symbol number -> IOS-config%
    ;;   Inserts a packet length into the match rules for a route map
    (define/public (insert-route-map-match-length name sequence-num length)
      (let* [(map-set (hash-ref route-maps name make-empty-map-set))
             (route-map (send map-set get-map/default sequence-num default-route-map))]
        (make-object IOS-config%
          hostname
          interfaces
          ACLs
          static-NAT
          dynamic-NAT
          static-routes
          (hash-set route-maps
                    name
                    (send map-set
                          insert-map
                          sequence-num
                              (send route-map
                                    insert-match-length
                                    length)))
          networks
          neighbors
          endpoints
          crypto-maps
          default-ACL-permit)))
    
    ;; symbol set-action<%> -> IOS-config%
    ;;   Sets the next hop for a route map
    (define/public (set-route-map-next-hop name sequence-num action)
      (let* [(map-set (hash-ref route-maps name make-empty-map-set))
             (route-map (send map-set get-map/default sequence-num default-route-map))]
        (make-object IOS-config%
          hostname
          interfaces
          ACLs
          static-NAT
          dynamic-NAT
          static-routes
          (hash-set route-maps
                    name
                    (send map-set
                          insert-map
                          sequence-num
                              (send route-map
                                    set-next-hop
                                    action)))
          networks
          neighbors
          endpoints
          crypto-maps
          default-ACL-permit)))
    
    ;; symbol set-action<%> -> IOS-config%
    ;;   Sets the default next hop for a route map
    (define/public (set-route-map-default-next-hop name sequence-num action)
      (let* [(map-set (hash-ref route-maps name make-empty-map-set))
             (route-map (send map-set get-map/default sequence-num default-route-map))]
        (make-object IOS-config%
          hostname
          interfaces
          ACLs
          static-NAT
          dynamic-NAT
          static-routes
          (hash-set route-maps
                    name
                    (send map-set
                          insert-map
                          sequence-num
                              (send route-map
                                    set-default-next-hop
                                    action)))
          networks
          neighbors
          endpoints
          crypto-maps
          default-ACL-permit)))
    
    ;; address<%> -> IOS-config%
    ;;   Inserts a network into the list of advertised networks
    (define/public (insert-network network)
      (make-object IOS-config%
        hostname
        interfaces
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        (append networks (list network))
        neighbors
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; neighbor<%> -> IOS-config%
    ;;   Inserts a BGP neighbor into the configuration
    (define/public (insert-neighbor neighbor)
      (make-object IOS-config%
        hostname
        interfaces
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        (append neighbors (list neighbor))
        endpoints
        crypto-maps
        default-ACL-permit))
    
    ;; endpoint<%> -> IOS-config%
    ;;   Inserts a VPN endpoint into the configuration
    (define/public (insert-endpoint endpoint)
      (make-object IOS-config%
        hostname
        interfaces
        ACLs
        static-NAT
        dynamic-NAT
        static-routes
        route-maps
        networks
        neighbors
        (append endpoints (list endpoint))
        crypto-maps
        default-ACL-permit))
    
    ;; symbol number symbol -> IOS-config%
    ;   Inserts an ACL into the match rules for a crypto map
    (define/public (insert-crypto-map-match-ACL-ID name sequence-num ACL-ID)
      (let* [(map-set (hash-ref route-maps name make-empty-map-set))
             (crypto-map (send map-set get-map/default sequence-num default-crypto-map))]
        (make-object IOS-config%
          hostname
          interfaces
          ACLs
          static-NAT
          dynamic-NAT
          static-routes
          route-maps
          networks
          neighbors
          endpoints
          (hash-set crypto-maps
                    name
                    (send map-set
                          insert-map
                          sequence-num
                              (send crypto-map
                                    insert-match-ACL-ID
                                    ACL-ID)))
          default-ACL-permit)))
    
    ;; symbol number -> IOS-config%
    ;;   Inserts a packet length into the match rules for a crypto map
    (define/public (insert-crypto-map-match-length name sequence-num length)
      (let* [(map-set (hash-ref route-maps name make-empty-map-set))
             (crypto-map (send map-set get-map/default sequence-num default-crypto-map))]
        (make-object IOS-config%
          hostname
          interfaces
          ACLs
          static-NAT
          dynamic-NAT
          static-routes
          route-maps
          networks
          neighbors
          endpoints
          (hash-set crypto-maps
                    name
                    (send map-set
                          insert-map
                          sequence-num
                              (send crypto-map
                                    insert-match-length
                                    length)))
          default-ACL-permit)))
    
    ;; symbol number host-address% -> IOS-config%
    ;;   Sets the tunnel endpoint for a crypto map
    (define/public (set-crypto-map-peer-endpoint name sequence-num peer-endpoint)
      (let* [(map-set (hash-ref route-maps name make-empty-map-set))
             (crypto-map (send map-set get-map/default sequence-num default-crypto-map))]
        (make-object IOS-config%
          hostname
          interfaces
          ACLs
          static-NAT
          dynamic-NAT
          static-routes
          route-maps
          networks
          neighbors
          endpoints
          (hash-set crypto-maps
                    name
                    (send map-set
                          insert-map
                          sequence-num
                              (send crypto-map
                                    set-peer-endpoint
                                    peer-endpoint)))
          default-ACL-permit)))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the rules that describe inbound ACL policies
    (define/public (inbound-ACL-rules)
      (flatten (append*
       (hash-map interfaces
                 (λ (name interf)
                   (send (hash-ref ACLs (get-field inbound-ACL-ID interf))
                         rules
                         `((,hostname hostname)
                           (,interf entry-interface)))))
       (list (if default-ACL-permit
                 (list (make-object rule%
                         'default-ACE
                         'Permit
                         (list 'true)))
                 '())))))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the rules that describe outbound ACL policies
    (define/public (outbound-ACL-rules)
      (flatten (append*
       (hash-map interfaces
                 (λ (name interf)
                   (send (hash-ref ACLs (get-field outbound-ACL-ID interf))
                         rules
                         `((,hostname hostname)
                           (,interf exit-interface)))))
       (list (if default-ACL-permit
                 (list (make-object rule%
                         'default-ACE
                         'Permit
                         (list 'true)))
                 '())))))
    
    ;; symbol -> (listof interface%)
    ;;   Returns a list of interfaces on the given side of the NAT
    (define (NAT-interfaces side)
      (map cdr (hash-filter interfaces (λ (name interf)
                                         (eqv? (get-field NAT-side interf) side)))))
    
    ;; symbol -> (listof rule%)
    ;;   Returns a list of the static rules on the given side of the NAT
    (define (NAT-static-translations side)
      (filter (λ (translation)
                (eqv? (send translation direction) side))
              static-NAT))
    
    ;; symbol -> (listof rule%)
    ;;   Returns a list of the dynamic rules on the given side of the NAT
    (define (NAT-dynamic-translations side)
      (filter (λ (translation)
                (eqv? (send translation direction) side))
              dynamic-NAT))
    
    ;; symbol -> (listof rule%)
    ;;   Returns a list of the forward NAT rules
    (define (NAT-forward-rules side)
      (flatten
       (map (λ (translation)
              (map (λ (interf)
                     (send translation
                           forward-rules
                           route-maps
                           ACLs
                           interfaces
                           `((,hostname hostname)
                             (,interf entry-interface))))
                   (NAT-interfaces side)))
            (append (NAT-static-translations side) (NAT-dynamic-translations side)))))
    
    ;; symbol -> (listof rule%)
    ;;   Returns a list of the reverse NAT rules
    (define (NAT-reverse-rules side)
      (flatten
       (map (λ (translation)
              (map (λ (interf)
                     (send translation
                           reverse-rules
                           route-maps
                           ACLs
                           interfaces
                           `((,hostname hostname)
                             (,interf entry-interface))))
                   (NAT-interfaces (if (eqv? side 'inside) 'outside 'inside))))
            (append (NAT-static-translations side) (NAT-dynamic-translations side)))))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the inside-to-outside NAT rules
    (define/public (inside-NAT-rules)
      (append (NAT-forward-rules 'inside) (NAT-reverse-rules 'outside) (list default-NAT-rule)))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the outside-to-inside NAT rules
    (define/public (outside-NAT-rules)
      (append (NAT-forward-rules 'outside) (NAT-reverse-rules 'inside) (list default-NAT-rule)))
    
    ;; -> (listof rule%)
    ;;   Returns a list of forwarding rules for directly connected networks
    (define/public (local-switching-rules)
      (flatten
       (append
        (append
         (map (λ (name-interf)
                (let [(name (car name-interf))
                      (interf (cdr name-interf))]
                  (list
                   (make-object rule%
                     (string->symbol (string-append "local-switch-primary-"
                                                    (symbol->string name)
                                                    "-"
                                                    (symbol->string (gensym))))
                     'Forward
                     `((,hostname hostname)
                       (,(get-field primary-network interf) dest-addr-in)
                       ; -TN added next-hop restriction below
                       (= next-hop dest-addr-out)
                       ; -TN Changed ip-n/a to IPAddress. Probably can be removed entirely.
                       (IPAddress next-hop)
                       (,interf exit-interface)))
                   (make-object rule%
                     (string->symbol (string-append "local-switch-primary-drop-"
                                                    (symbol->string name)
                                                    "-"
                                                    (symbol->string (gensym))))
                     'Drop
                     `((,hostname hostname)
                       (,(get-field primary-network interf) dest-addr-in))))))                    
              (hash-filter interfaces (λ (name interf)
                                        (get-field primary-address interf))))
         (map (λ (name-interf)
                (let [(name (car name-interf))
                      (interf (cdr name-interf))]
                  (list
                   (make-object rule%
                     (string->symbol (string-append "local-switch-secondary-"
                                                    (symbol->string name)
                                                    "-"
                                                    (symbol->string (gensym))))
                     'Forward
                     `((,hostname hostname)
                       ; -TN added next-hop restriction below
                       (= next-hop dest-addr-out)
                       (,(get-field secondary-network interf) dest-addr-in)
                          ; -TN Changed ip-n/a to IPAddress. Probably can be removed entirely.
                       (IPAddress next-hop)
                       (,interf exit-interface)))
                   (make-object rule%
                     (string->symbol (string-append "local-switch-secondary-drop-"
                                                    (symbol->string name)
                                                    "-"
                                                    (symbol->string (gensym))))
                     'Drop
                     `((,hostname hostname)
                       (,(get-field secondary-network interf) dest-addr-in))))))
              (hash-filter interfaces (λ (name interf)
                                        (get-field secondary-address interf)))))
        (list default-routing-rule))))
    
    ;; -> (listof rule%)
    ;;   Returns a list of forwarding rules for adjacent networks
    (define/public (network-switching-rules)
      (append
       (map (λ (name-interf)
              (let [(name (car name-interf))
                    (interf (cdr name-interf))]
                (make-object rule%
                  (string->symbol (string-append "network-switch-"
                                                 (symbol->string name)
                                                 "-"
                                                 (symbol->string (gensym))))
                  'Forward
                  `((,hostname hostname)
                    ; -TN added next-hop restriction below
                    (= next-hop dest-addr-out)
                    (,(get-field primary-network interf) next-hop)
                    (,interf exit-interface)))))
            (hash-filter interfaces (λ (name interf)
                                      (get-field primary-address interf))))
       (map (λ (name-interf)
              (let [(name (car name-interf))
                    (interf (cdr name-interf))]
                (make-object rule%
                  (string->symbol (string-append "network-switch-drop-"
                                                 (symbol->string name)
                                                 "-"
                                                 (symbol->string (gensym))))
                  'Forward
                  `((,hostname hostname)
                    ; -TN??? Question: should this 'Forward be a 'Drop? (If 'Drop, remove the next-hop restriction)
                    (= next-hop dest-addr-out)
                    (,(get-field secondary-network interf) next-hop)
                    (,interf exit-interface)))))
            (hash-filter interfaces (λ (name interf)
                                      (get-field secondary-address interf))))))
    
    ;; -> (listof rule%)
    ;;   Returns a list of forwarding rules for interfaces
    (define/public (interface-switching-rules)
      (hash-map interfaces
                (λ (name interf)
                  (make-object rule%
                    (string->symbol (string-append "interface-switch-"
                                                   (symbol->string name)
                                                   "-"
                                                   (symbol->string (gensym))))
                    'Forward
                    `((,hostname hostname)
                      (,interf exit-interface)
                      ; -TN added next-hop restriction below
                      (= next-hop dest-addr-out)
                         ; -TN Changed ip-n/a to IPAddress. Probably can be removed entirely.
                      (IPAddress next-hop))))))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the static routing rules
    (define/public (static-route-rules)
      (flatten
       (append
        (append
         (map (λ (route)
                (send route
                      rules
                      `((,hostname hostname))))
              static-routes))
        (list default-routing-rule))))
    
    ;; symbol (hash-table abstract-map%) -> (listof route-map%)
    ;;   Returns a list of maps with the given tag ordered by priority
    (define (get-ordered-maps name maps)
      (send (hash-ref maps name) ordered-maps))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the policy-based routing rules (i.e., those that
    ;;   take precedence over static routing rules)
    (define/public (policy-routing-rules)
      (flatten
       (append
        (hash-map interfaces
                  (λ (name interf)
                    (append*
                     (map (λ (route-map)
                            (send route-map
                                  routing-rules
                                  ACLs
                                  `((,hostname hostname)
                                    (,interf entry-interface))))
                          (get-ordered-maps (get-field policy-route-map-ID interf) route-maps)))))
        (list default-routing-rule))))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the default policy-based routing rules (i.e., those that
    ;;   apply after static routing rules)
    (define/public (default-policy-routing-rules)
      (flatten
       (append
        (hash-map interfaces
                  (λ (name interf)
                    (append*
                     (map (λ (route-map)
                            (send route-map
                                  default-routing-rules
                                  ACLs
                                  `((,hostname hostname)
                                    (,interf entry-interface))))
                          (get-ordered-maps (get-field policy-route-map-ID interf) route-maps)))))
        (list default-routing-rule))))
    
    ;; -> (listof rule%)
    ;;   Returns a list of the encryption rules
    (define/public (encryption-rules)
      (append*
       (hash-map interfaces
                 (λ (name interf)
                   (append*
                    (map (λ (crypto-map)
                           (send crypto-map
                                 encryption-rules
                                 ACLs
                                 `((,hostname hostname)
                                   (,interf exit-interface))))
                         (get-ordered-maps (get-field crypto-map-ID interf) crypto-maps)))))))
    ))

;; boolean -> IOS-config%
;;   Returns an "empty" configuration
(define (make-empty-IOS-config default-ACL-permit)
  (make-object IOS-config%
    (make-object hostname% 'Router)
    (make-immutable-hash '())
    (make-immutable-hash (list (cons 'default default-ACL)))
    '()
    '()
    '()
    (make-immutable-hash (list (cons 'default (make-empty-map-set))))
    '()
    '()
    '()
    (make-immutable-hash (list (cons 'default (make-empty-map-set))))
    default-ACL-permit))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Policy Vocabulary Generation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-struct tree (node children))

;; tree any -> tree
(define (insert-tree tree item)
  (let [(node (tree-node tree))]
    (if (tree-contains? tree item)
        tree
        (let* [(children (tree-children tree))
               (equal-children (filter (λ (child)
                                         (send item equals? (tree-node child)))
                                       children))]
          (if (not (empty? equal-children))
              tree
              (let*-values [([covered-children uncovered-children]
                             [partition (λ (child)
                                          (send item covers? (tree-node child)))
                                        children])]
                (if (not (empty? covered-children))
                    (make-tree node (cons (make-tree item covered-children) uncovered-children))
                    (let*-values [([covering-children non-covering-children]
                                   [partition (λ (child)
                                                (send (tree-node child) covers? item))
                                              children])]
                      (if (not (empty? covering-children))
                          (make-tree node (append (map (λ (child)
                                                         (insert-tree child item))
                                                       covering-children)
                                                  non-covering-children))
                          (make-tree node (cons (make-tree item '()) non-covering-children)))))))))))

;; tree any -> boolean
(define (tree-contains? tree item)
  (or (send item equals? (tree-node tree))
      (ormap (λ (child)
               (tree-contains? child item))
             (tree-children tree))))

;; (listof rule%) interface atom<%> -> tree
(define (value-tree rules type root-value)
  (foldl (λ (rule tree)
           (foldl (λ (value intermediate-tree)
                    (insert-tree intermediate-tree value))
                  tree
                  (send rule extract-atoms type)))
         (make-tree root-value '())
         rules))

;; tree -> (listof symbol)
(define (type-tree tree)
  (let [(node-value (send (tree-node tree) text))]
    (cons node-value
          (map (λ (child)
                 (if (empty? (tree-children child))
                     (send (tree-node child) text)
                     (type-tree-helper child)))
               (tree-children tree)))))

;; tree -> (listof symbol)
(define (type-tree-helper tree)
  (let [(node-value (send (tree-node tree) text))
        (node-children (tree-children tree))]
    (cons node-value
          (if (empty? node-children)
              '()
              (map (λ (child)
                     (if (empty? (tree-children child))
                         (send (tree-node child) text)
                         (type-tree-helper child)))
                   node-children)))))

;; symbol -> symbol
(define (make-other-type-value value)
  (string->symbol (string-append (symbol->string value) "-other")))

;; tree -> (listof symbol)
(define (constraints tree)
  (if (empty? (tree-children tree))
      (if (send (tree-node tree) single?)
          `((atmostone ,(send (tree-node tree) text)))
          '())
      (foldl (λ (child result)
               (append (constraints child) result))
             `((disjoint-all ,(send (tree-node tree) text)))
             (tree-children tree))))

;; (listof rule%) -> (listof symbol)
;;   Constructs a policy vocabulary from a list of rules
(define (vocabulary rules)
  `(PolicyVocab IOS-vocab
                (Types
                 (Hostname : ,@(remove-duplicates
                                (append*
                                 (map (λ (rule)
                                        (map (λ (name)
                                               (send name text))
                                      (send rule extract-atoms hostname%)))
                                 rules))))
                 (Interface : interf-drop (interf-real ,@(remove-duplicates
                                                         (append*
                                                          (map (λ (rule)
                                                                 (map (λ (interf)
                                                                        (send interf text))
                                                                      (send rule extract-atoms interface%)))
                                                               rules)))))
                 
                 ; - TN, removed ip-N/A etc. Colon is now deprecated, so not needed
                 ,(type-tree (value-tree rules
                                         address<%>
                                         (make-object network-address% '0.0.0.0 '0.0.0.0 #f)))
                 (Protocol : prot-ICMP prot-TCP prot-UDP)

                 ; - TN, removed port-N/A etc. Colon no longer needed.
                 ,(type-tree (value-tree rules
                                         port<%>
                                         (make-object port-range% 0 65535)))
                 
                 ; - TN, removed icmp-N/A, etc.
                 (ICMPMessage : icmp-echo icmp-echo-reply icmp-time-exceeded icmp-unreachable)
                 
                 (TCPFlags : ,@TCP-flags)
                           
                 (Length : ,@(remove-duplicates
                              (append*
                               (map (λ (rule)
                                      (send rule extract-atoms length%))
                                    rules))))
                 )
                (Decisions
                 Permit
                 Deny
                 Translate
                 Route
                 Forward
                 Drop
                 Pass
                 Advertise
                 Encrypt)
                (Predicates ,@(map (λ (predicate)
                                     `(,predicate : Address Port Protocol Address Port))
                                   (remove-duplicates (flatten (map (λ (rule)
                                                                      (send rule extract-predicates))
                                                                    rules))))
                 )
                (ReqVariables
                 (hostname : Hostname)
                 (entry-interface : interf-real)
                 (src-addr-in : IPAddress)
                 (src-addr-out : IPAddress)
                 (dest-addr-in : IPAddress)
                 (dest-addr-out : IPAddress)
                 (protocol : Protocol)
                 (message : ICMPMessage)
                 (flags : TCPFlags)
                 (src-port-in : Port)
                 (src-port-out : Port)
                 (dest-port-in : Port)
                 (dest-port-out : Port)
                 (length : Length)
                 (next-hop : IPAddress)
                 (exit-interface : Interface)
                 )
                (OthVariables )
                (Constraints
                 (abstract Hostname)
                 (abstract Interface)
                 (abstract interf-real)
                 (abstract ICMPMessage)
                 (abstract Protocol)
                 (disjoint-all Hostname)
                 (disjoint-all Interface)
                 (disjoint-all IPAddress)
                 (disjoint-all Protocol)
                 (disjoint-all Port)
                 (disjoint-all ICMPMessage)
                 (disjoint-all Length)
                 (atmostone-all Interface)
                 ,@(constraints (value-tree rules address<%> (make-object network-address% '0.0.0.0 '0.0.0.0 #f)))
                 (atmostone-all Protocol)
                 ,@(constraints (value-tree rules port<%> (make-object port-range% 0 65535)))
                 (atmostone icmp-echo)
                 (atmostone icmp-echo-reply)
                 (atmostone-all Flags)
                 (atmostone-all Length)
                 (nonempty Hostname)
                 (nonempty Interface)
                 (nonempty IPAddress)
                 (nonempty Protocol)
                 (nonempty Port)
                 (nonempty ICMPMessage)
                 (nonempty Flags)
                 (nonempty Length))))

(define TCP-flags '(NONE SYN ACK FIN PSH URG RST))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Policy Generation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; symbol (listof rule%) -> (listof symbol)
;;   Constructs a policy from a list of rules
(define (policy name rules)
  `(Policy ,name uses IOS-vocab
           (Target )
           (Rules
            ,@(map (λ (rule)
                     (send rule text))
                   rules))
           (RComb FAC)
           (PComb FAC)
           (Children )))

