#lang racket

(define (convert-weights kg-base lbs-base)
  (displayln "What type of conversion do you need?")
  (displayln "1. KG to LBS")
  (displayln "2. LBS to KG")
  (display "Select an option using numbers (1 or 2): ")
  (define conversion (read-line))

  (newline)
  
  (cond
    [(equal? conversion "1")
     (begin
       (display "Enter the amount of KG to convert: ")
       (define weight (string->number (read-line)))
       (define converted-weight (floor (* weight lbs-base 10) 10))
       (displayln "")
       (displayln (format "~a KG = ~a LBS" weight converted-weight))]
    [(equal? conversion "2")
     (begin
       (display "Enter the amount of LBS to convert: ")
       (define weight (string->number (read-line)))
       (define converted-weight (floor (* weight kg-base 10) 10))
       (displayln "")
       (displayln (format "~a LBS = ~a KG" weight converted-weight)))]
    [else
     (displayln "Invalid option")]))
  
(define kg-base 0.453592)
(define lbs-base 2.20462)
(convert-weights kg-base lbs-base)
