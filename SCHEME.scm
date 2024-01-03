(define (weight-converter)
  (let ((kg-base 0.453592)
        (lbs-base 2.20462))
    (display "What type of conversion do you need?\n")
    (display "1. KG to LBS\n")
    (display "2. LBS to KG\n")
    (display "Select an option using numbers (1 or 2): ")
    (let ((conversion (read)))
      (newline)
      (cond
        ((= conversion 1)
         (begin
           (display "Enter the amount of KG to convert: ")
           (let ((weight (read)))
             (let ((converted-weight (floor (* weight lbs-base) 10)))
               (display (string-append "\n" (number->string weight) " KG = " (number->string converted-weight) " LBS\n"))))))
        ((= conversion 2)
         (begin
           (display "Enter the amount of LBS to convert: ")
           (let ((weight (read)))
             (let ((converted-weight (floor (* weight kg-base) 10)))
               (display (string-append "\n" (number->string weight) " LBS = " (number->string converted-weight) " KG\n"))))))
        (else
         (display "Invalid option\n"))))))

(weight-converter)
