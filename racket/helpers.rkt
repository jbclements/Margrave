#lang racket

(require srfi/13                  
         syntax/readerr
         rackunit
         racket/serialize
         ;racket/contract
         ;racket/list
         ;racket/path
         ;racket/match
         xml)

; Scenario structs are provided via provide/contract
(provide (except-out (all-defined-out)
                     (struct-out m-scenario)
                     (struct-out m-relation)
                     (struct-out m-statistics)
                     (struct-out m-unsat)))

; HELPERS

;****************************************************************
;****************************************************************

; partition*
; Partitions the-list by bucket-func. 
; If bucket-func returns #f, the element will be IGNORED. 
; (That is, there can never be a #f bucket.)
; init-keys contains initial key values that should be present
; even if no element falls into that bucket.

; using a mutable hash table for now. if switch to immutable, can fold table creation over the-list
(define/contract 
  (partition* bucket-func the-list #:init-keys [init-keys '()])
  [->* (procedure? 
        list?)
       (#:init-keys list?)  
       hash?]  
  (define result-hash (make-hash))
  
  ; initialize
  (for-each (lambda (k) (hash-set! result-hash k empty)) init-keys)
  
  (for-each (lambda (x) 
              (define bucket (bucket-func x))
              (when bucket
                (if (hash-has-key? result-hash bucket)                    
                    (hash-set! result-hash bucket (cons x (hash-ref result-hash bucket)))
                    (hash-set! result-hash bucket (list x)))) )
            the-list)
  result-hash)


;****************************************************************
;****************************************************************

(define (fold-append-with-spaces posslist)
  (fold-append-with-separator posslist " "))

; May be a list, may not be a list
(define (fold-append-with-separator posslist separator)
  (if (list? posslist)
      (foldr (lambda (s t)
               (let ([s-str (if (symbol? s)
                                (symbol->string s)
                                s)]
                     [t-str (if (symbol? t)
                                (symbol->string t)
                                t)])                  
                 (cond
                   [(string=? s-str "") t-str]
                   [(string=? t-str "") s-str]
                   [else (string-append s-str separator t-str)])))
             ""
             posslist)
      (if (symbol? posslist)
          (symbol->string posslist)
          posslist)))

(define (fold-append-with-spaces-quotes posslist)
  (fold-append-with-spaces (if (list? posslist)
                               (map symbol->quoted-string posslist)
                               posslist)))

; symbol or string -> string
; Returns the argument, quoted, as a string.
(define (symbol->quoted-string arg)
  (if (symbol? arg)
      (string-append "\"" (symbol->string arg)"\"")
      (string-append "\"" arg "\"")))

(define (->string arg)
  (cond 
    [(symbol? arg) (symbol->string arg)]
    [(number? arg) (number->string arg)]
    [(syntax? arg) (->string (syntax->datum arg))]        
    [(string? arg) arg]
    [else (format "~a" arg)]))

(define (->symbol arg)  
  (cond 
    [(symbol? arg) arg]
    [else (string->symbol (->string arg))]))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; hashtable->string 
; consumes a hash? and produces a string.
(define/contract (pretty-print-hashtable thetable)
  [hash? . -> . string?]
  (define buffer (open-output-string))
  (write-string "{ " buffer)
  ; string-fold would be better here, and avoid the extra "," at end
  (hash-for-each thetable
                 (lambda (k v) (write-string 
                                (string-append (->string k) 
                                               " -> " 
                                               (fold-append-with-separator (->string v) ", ") ", ") buffer)))
  (write-string "}\n" buffer)
  (get-output-string buffer))

(define (wrap-list-parens lst)
  (fold-append-with-spaces (map (lambda (str) (string-append "(" str ")")) lst)))

(define (safe-get-margrave-collection-path)
  (with-handlers ([(lambda (e) (exn:fail:filesystem? e))
                   (lambda (e) (current-directory))])
    ; If no margrave collection, assume debug mode.
    (collection-path "margrave")))

(define (resolve-margrave-filename-keyword raw-filename)
  
  (define the-filename (cond [(path? raw-filename)
                              (path->string raw-filename)]
                             [(symbol? raw-filename)
                              (symbol->string raw-filename)]
                             [else 
                              raw-filename]))
  
  (define loc (string-contains-ci the-filename "*MARGRAVE*"))
  (define coll-path-string (path->string (safe-get-margrave-collection-path)))
  
  (define result (cond [(or (not loc) (> loc 1)) 
                        the-filename]
                      [(equal? loc 1)
                       (string-replace the-filename coll-path-string 0 11)]
                      [else 
                       (string-replace the-filename coll-path-string 0 10)]))
  
  ; Avoid confusion: prevent mixed use of / and \ in the same path.
  (path->string (simplify-path result)))


; file-exists?/error 
; filename src-syntax -> boolean
; If file does not exist, raises an error
(define (file-exists?/error file-name src-syntax [error-message (format "File did not exist: ~a~n" file-name)])
  (cond [(file-exists? file-name)
         #t]
        [(syntax? src-syntax)
         (raise-read-error 
          error-message
          (syntax-source src-syntax)
          (syntax-line src-syntax)
          (syntax-column src-syntax)
          (syntax-position src-syntax)
          (syntax-span src-syntax))]
        [else (raise-user-error error-message)]))

; filename syntax -> port
; If file does not exist, raises an exception. If syntax has been passed, will enable syntax highlighting.
(define (open-input-file/exists file-name src-syntax [error-message (format "File did not exist: ~a~n" file-name)])
  (and (file-exists?/error file-name src-syntax error-message)
       (open-input-file file-name)))

(define (path-only/same the-path)
  (define p (path-only the-path))
  (if p
      p
      'same))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This section made by Tim with help from Danny Yoo
; Extend Racket's pattern matcher to recognize lists of syntaxes.

(define-match-expander syntax-list
  (lambda (stx)
    (syntax-case stx ()
      [(_ elts ...)
       #'(? (lambda (x) (and (syntax? x)
                             (list? (syntax->list x))))
            (app syntax->list
                 (list elts ...)))])))

; WARNING: 
; Can't just use list because the "maybe syntax" part affects only the outer part of the syntax object.
;(match #'((R p) a b c)
;    [(syntax-list-quasi ,(syntax-list a ...) ,@(list b ...)) (list a b)]
;    [else #f])
; WORKS
; (match #'((R p) a b c)
;    [(syntax-list-quasi ,(list a ...) ,@(list b ...)) (list a b)]
;    [else #f])
; DOES NOT
; to cover both, need to invoke maybe-syntax-list-quasi internally. e.g.
; (maybe-syntax-list-quasi ,(maybe-syntax-list-quasi ,@(list a ...)) ,@(list b ...))
; to capture the ((Polname Idbname) v1 v2 v3) forms.


(define-match-expander syntax-list-quasi
  (lambda (stx)
    (syntax-case stx ()
      [(_ elts ...)
       #'(? (lambda (x) (and (syntax? x)
                             (list? (syntax->list x))))
            (app syntax->list
                 `(elts ...)))])))

; Use to make case statements over s-expressions prettier. 
; See match functions for m-formulas for examples.
(define-match-expander m-op-case
  (lambda (stx)
    (syntax-case stx ()
      [(_ opid elts ...)
       #'(or `(opid ,@(list elts ...)) 
             (syntax-list-quasi ,(? (make-keyword-predicate/nobind #'opid)) ,@(list elts ...)))])))

(define-match-expander maybe-syntax-list-quasi
  (lambda (stx)
    (syntax-case stx ()
      [(_ elts ...)
       #'(or `(elts ...) (syntax-list-quasi elts ...))])))

; use (maybe-identifier id), not (maybe-identifier 'id)
(define-match-expander maybe-identifier
  (lambda (stx)
    (syntax-case stx ()
      [(_ elt)
       #'(or 'elt (? (make-keyword-predicate/nobind #'elt)))])))

; Use this match pattern for actual identifiers that can have bindings in Racket.
(define (make-keyword-predicate keyword)
 (lambda (stx)   
   (and (identifier? stx)
        (free-identifier=? stx keyword))))

; Use _this_ match pattern for matching identifier syntax ***regardless of bindings***.
; This is useful for matching formula sexpression syntax, etc. Bindings can interfere here.
; e.g. #'and from one module need not have the same binding as #'and from another. 
(define (make-keyword-predicate/nobind keyword)
 (lambda (stx)   
   (and (identifier? stx)
        (equal? (syntax->datum keyword) 
                (syntax->datum stx)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Helpers for formula structures and commands that use formulas

; Might be better with [children (listof m-type?)] 
; but would need a recursive contract.
(define-struct/contract m-type
  ([name string?]
   [child-names (listof string?)])
  #:transparent)
 
(define-struct/contract m-predicate
  ([name string?]
   [arity (listof string?)])
  #:transparent)

(define-struct/contract m-constant
  ([name string?]
   [type string?])
  #:transparent)

(define-struct/contract m-function
  ([name string?]   
   [arity (listof string?)]
   [result string?])
  #:transparent)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Helper struct for scenarios. For now, atoms are strings.

(serializable-struct m-relation
  (name reltype tuples)
  #:mutable #:transparent)
(provide/contract (struct m-relation
                    ([name string?]   
                     [reltype symbol?]
                     [tuples (listof (listof string?))])))

(serializable-struct m-statistics
  (computed-max user-provided-max used-max warnings used)
  #:mutable #:transparent)
(provide/contract (struct m-statistics
                    ([computed-max (or/c number? false?)]
                     [user-provided-max (or/c number? false?)]
                     [used-max (or/c number? false?)]
                     [warnings (listof string?)]
                     [used hash?]) ))

(serializable-struct m-scenario
  (size atoms sorts skolems relations statistics annotations query-id)
  #:mutable #:transparent)  
(provide/contract (struct m-scenario 
                    ([size integer?]
                     [atoms (listof string?)]
                     [sorts (listof m-relation?)]
                     [skolems (listof m-relation?)]
                     [relations (listof m-relation?)]
                     [statistics m-statistics?]
                     [annotations (listof string?)]
                     [query-id string?])))

(serializable-struct m-unsat
  (statistics query-id)
  #:mutable #:transparent)
(provide/contract (struct m-unsat ([statistics m-statistics?]
                                   [query-id string?])))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define reserved-words
  '(function
    constant
    predicate
    rule
    vocab
    policy
    policyset
    type ; used as synonyms for now
    sort
    
    and
    or
    iff
    implies
    not
    =
    
    list
    quote
    quasiquote))

; Function symbols must have the first character alpha lowercase
(define (valid-function? sym-or-syn)
  (define sym (if (syntax? sym-or-syn)
                  (syntax->datum sym-or-syn)
                  sym-or-syn))
  (and (symbol? sym) 
       (not (member sym reserved-words))
       (let ([str0 (string-ref (symbol->string sym) 0)])
         (and 
          (char-lower-case? str0)
          (char-alphabetic? str0)))))

; Constant symbols are preceded by a quote, but otherwise same as funcs.
(define (valid-constant? sym-or-syn)
  (define sym (if (syntax? sym-or-syn)
                  (syntax->datum sym-or-syn)
                  sym-or-syn))
  (match sym
    [`(quote ,(? valid-function? sym)) #t]
    [else #f]))

; Predicate symbols are the same as function symbols.
; Understand difference from context.
(define (valid-predicate? sym-or-syn)
  (define sym (if (syntax? sym-or-syn)
                  (syntax->datum sym-or-syn)
                  sym-or-syn))
  (and (symbol? sym) 
       (not (member sym reserved-words))
       (let ([str0 (string-ref (symbol->string sym) 0)])
         (and 
          (char-lower-case? str0)
          (char-alphabetic? str0)))))

; Sort symbols must be capitalized.
(define (valid-sort? sym-or-syn)
  (define sym (if (syntax? sym-or-syn)
                  (syntax->datum sym-or-syn)
                  sym-or-syn))
  (and (symbol? sym) 
       (not (member sym reserved-words))
       (let ([str0 (string-ref (symbol->string sym) 0)])
         (and 
          (char-upper-case? str0)
          (char-alphabetic? str0)))))

; Variables must begin with a lowercase letter.
; This is also the same as func ids and predicate ids.
(define (valid-variable? sym-or-syn)  
  (define sym (if (syntax? sym-or-syn)
                  (syntax->datum sym-or-syn)
                  sym-or-syn))
  (and (symbol? sym) 
       (not (member sym reserved-words))
       (let ([str0 (string-ref (symbol->string sym) 0)])
         (and 
          (char-lower-case? str0)
          (char-alphabetic? str0)))))

(define (valid-variable?/err sexpr)
  (cond [(valid-variable? sexpr) #t]
        [(syntax? sexpr) (raise-syntax-error 'Margrave (format "Invalid variable: ~a.~n" (->string sexpr)) #f #f (list sexpr))]
        [else (raise-user-error (format "Invalid variable: ~a.~n" (->string sexpr)))]))

(define (valid-predicate?/err sexpr)
  (cond [(valid-predicate? sexpr) #t]
        [(syntax? sexpr) (raise-syntax-error 'Margrave (format "Invalid predicate: ~a.~n" (->string sexpr)) #f #f (list sexpr))]
        [else (raise-user-error (format "Invalid predicate: ~a.~n" (->string sexpr)))]))

(define (valid-constant?/err sexpr)
  (cond [(valid-constant? sexpr) #t]
        [(syntax? sexpr) (raise-syntax-error 'Margrave (format "Invalid constant: ~a.~n" (->string sexpr)) #f #f (list sexpr))]
        [else (raise-user-error (format "Invalid constant: ~a.~n" (->string sexpr)))]))

(define (valid-function?/err sexpr)
  (cond [(valid-function? sexpr) #t]
        [(syntax? sexpr) (raise-syntax-error 'Margrave (format "Invalid function: ~a.~n" (->string sexpr)) #f #f (list sexpr))]
        [else (raise-user-error (format "Invalid function: ~a.~n" (->string sexpr)))]))

(define (valid-sort?/err sexpr)
  (cond [(valid-sort? sexpr) #t]
        [(syntax? sexpr) (raise-syntax-error 'Margrave (format "Invalid sort: ~a.~n" (->string sexpr)) #f #f (list sexpr))]
        [else (raise-user-error (format "Invalid sort: ~a.~n" (->string sexpr)))]))

(define (valid-sort-or-predicate?/err sexpr)
  (cond [(or (valid-sort? sexpr) (valid-predicate? sexpr)) #t]
        [(syntax? sexpr) (raise-syntax-error 'Margrave (format "Invalid sort or predicate: ~a.~n" (->string sexpr)) #f #f (list sexpr))]
        [else (raise-user-error (format "Invalid sort or predicate: ~a.~n" (->string sexpr)))]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
(define (margrave-error msg expr)
  (cond [(syntax? expr)
         (raise-syntax-error 'Margrave msg #f #f (list expr))]
        [(list? expr)
         (for-each (lambda (e) (margrave-error msg e)) expr)]
        [else 
         (raise-user-error (format "~a: ~a.~n" msg (->string expr)))]))

(define (syntax->string x)
  (symbol->string (syntax->datum x)))

; Sanitize output. Don't report list contents.
(define (member? ele lst)
  (if (member ele lst) #t #f))

; TODO Should be re-written functionally
; always returns an immutable hash.
(define/contract (hash-union/overlap h1 h2 overlap-error-msg)
  [hash? hash? string? . -> . (and/c hash? (not/c immutable?))]
  (define result (hash-copy h1))
  (for ([key (hash-keys h2)])
    (cond
      [(not (hash-has-key? result key)) (hash-set! result key (hash-ref h2 key))]
      [(equal? (hash-ref h1 key) (hash-ref h2 key)) void]
      [else (raise-user-error overlap-error-msg)]))
  result)


; Since constants have the form 'x  ---- (quote x)
; We really have ''x (quote 'x) when working with them.
(define (extract-constant-id sexpr)
  (cond [(and (syntax? sexpr) (not (identifier? sexpr)))
         (second (syntax->list sexpr))]
        [(list? sexpr)
         (second sexpr)]
        [else sexpr]))

;;;;;;;;;;;;;;;;;;;;;;;;
; Used to de-order lists in test cases
(define (equal-unordered? xs ys)
  (cond 
    [(not (and (list? xs) (list? ys))) 
     (equal? xs ys)]
    [(and (empty? xs) (empty? ys)) 
     #t]
    [(or (empty? xs) (empty? ys)) 
     #f]
    [else 
     (and (member (first xs) ys)
          (equal-unordered? (rest xs)
                            (remove (first xs) ys)))]))

;;;;;;;;;;;;;;;;;;;;;;;;
; remove all elements in a mutable hash table
(define/contract (hash-remove-all ahash) 
  [(and/c hash? (not/c immutable?)) . -> . void?]
  (hash-for-each ahash (lambda (key val) (hash-remove! ahash key))))