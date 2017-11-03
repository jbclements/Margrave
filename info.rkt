#lang info

(define name "Margrave")
(define scribblings '(["scribblings/margrave.scrbl" ]))
(define collection "margrave")
(define compile-omit-paths '("extra-files" "extended-examples"))
;(multi-page)  ; multi-page would cause each top-level sect to get its own html page
; see raco setup docs
