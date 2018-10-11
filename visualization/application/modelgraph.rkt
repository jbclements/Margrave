#lang racket/gui

(provide modelgraph-node% modelgraph-edge% modelgraph% pos-modelgraph-node% results-hash result-accept result-deny result-modify)

(require "netgraph.rkt")

; Result types
(define model-result%
  (class object%
    (init-field
     [bitmap null]
     [name "UNNAMED"])
    
    (super-new)
    
    (define/public (get-bitmap) bitmap)
    (define/public (get-name) name)))

(define result-accept
  (make-object model-result%
    (make-object bitmap% "../images/icon_accept.png")
    "Accept"))

(define result-deny
  (make-object model-result%
    (make-object bitmap% "../images/icon_deny.png")
    "Deny"))

(define result-modify
  (make-object model-result%
    (make-object bitmap% "../images/icon_modify.png")
    "Modify"))

(define results-hash (make-hash))
(hash-set! results-hash 'accept result-accept)
(hash-set! results-hash 'deny result-deny)
(hash-set! results-hash 'translate result-modify)


; Node in a modelgraph
; Has a list of policy results (blocked, accepted, etc)
(define modelgraph-node%
  (class netgraph-node%
    (init-field
     [results empty]
     [source? #f]
     [dest? #f])
    (super-new)
    
    (define/public (get-results) results)
    (define/public (is-source?) source?)
    (define/public (is-dest?) dest?)
    
    ))

; Edge
; Knows if it is active (part of the model) and if it's blocked.
(define modelgraph-edge%
  (class netgraph-edge%
    (init-field
     [active #f]
     [blocked #f])
    
    (define/public (is-active?) active)
    (define/public (is-blocked?) blocked)
    (define/public (set-active! b) (set! active b))
    (define/public (set-blocked! b) (set! blocked b))
    
    (super-new)))

; The graph
; TODO: make sure the nodes and edges that are a part of it are modelgraph type not
; netgraph type.
(define modelgraph%
  (class netgraph%
    (super-new)))

; Positional component mixed in
(define pos-modelgraph-node% (pos-mixin modelgraph-node%))
