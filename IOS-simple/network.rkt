#lang racket

(require (file "../margrave.rkt")
         (file "../margrave-ios.rkt")
         xml)

; Vectors for the queries in this file

(define reqfull-1 "(fw1, fw1-entry-interface, 
        fw1-src-addr-in, fw1-src-addr_, fw1-src-addr-out, 
        fw1-dest-addr-in, fw1-dest-addr_, fw1-dest-addr-out, 
        protocol, message, flags,
        fw1-src-port-in, fw1-src-port_, fw1-src-port-out, 
        fw1-dest-port-in, fw1-dest-port_, fw1-dest-port-out, 
        length, fw1-next-hop, fw1-exit-interface)")

(define reqfull-2 "(fw2, fw2-entry-interface, 
        fw1-src-addr-out, fw2-src-addr_, fw2-src-addr-out, 
        fw1-dest-addr-out, fw2-dest-addr_, fw2-dest-addr-out, 
        protocol, message, flags,
        fw1-src-port-out, fw2-src-port_, fw2-src-port-out, 
        fw1-dest-port-out, fw2-dest-port_, fw2-dest-port-out, 
        length, fw2-next-hop, fw2-exit-interface)")

(define reqpol-1 "(fw1, fw1-entry-interface, 
        fw1-src-addr-in, fw1-src-addr-out, 
        fw1-dest-addr-in, fw1-dest-addr-out, 
        protocol, message, flags,
        fw1-src-port-in, fw1-src-port-out, 
        fw1-dest-port-in, fw1-dest-port-out, 
        length, fw1-next-hop, fw1-exit-interface)")

(define reqpol-2 "(fw2, fw2-entry-interface, 
        fw1-src-addr-out, fw2-src-addr-out, 
        fw1-dest-addr-out, fw2-dest-addr-out, 
        protocol, message, flags,
        fw1-src-port-out, fw2-src-port-out, 
        fw1-dest-port-out, fw2-dest-port-out, 
        length, fw2-next-hop, fw2-exit-interface)")


(define (run-queries-for-example)
  
  ; Start Margrave's java engine
  ; Pass path of the engine files: 1 level up from here.
  ; no JVM options, but turn on Margrave's logging
  (start-margrave-engine (build-path (current-directory) 'up) '() '( "-log" ))
  
  ; Load all the policies 
  (load-ios-policies (build-path (current-directory) "network") "" "")  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; 
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
  (printf "~n~nSample multi-firewall query:~n")
  
  ; Remember: AND binds tighter than OR, so wrap the OR in parens.
  ; 10.200.0.0/255.255.0.0 is "the internet" for this example: something outside the extern router
  (display-response (mtext (string-append "EXPLORE prot-TCP(protocol) AND
192.168.1.2(fw1-src-addr-in) AND
in_lan(fw1-entry-interface) AND
out_dmz(fw2-entry-interface) AND
hostname-intern(fw1) AND
hostname-extern(fw2) AND

10.200.0.0/255.255.0.0(fw1-dest-addr-in) AND
port-80(fw1-dest-port-in) AND

internal-result" reqfull-1 " AND

( NOT firewall-passed" reqpol-1 " OR

internal-result" reqfull-2 " AND
NOT firewall-passed" reqpol-2 ")

UNDER InboundACL
INCLUDE
InboundACL:ACE-hostname-intern-line-12-g1961_applies" reqpol-1 ",
InboundACL:ACE-hostname-intern-line-15-g1964_applies" reqpol-1 ",
InboundACL:ACE-hostname-extern-line-17-g1970_applies" reqpol-2 ",
InboundACL:ACE-hostname-extern-line-18-g1971_applies" reqpol-2 ",
InboundACL:ACE-hostname-extern-line-20-g1973_applies" reqpol-2 "

TUPLING")))
  
  (display-response (mtext "GET ONE"))  
  
  
  
  ;(stop-margrave-engine)
  )