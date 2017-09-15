(define (pascal col row)
  (cond ((> col row)
         (error "unvalid col value"))
        ((or (= col 0) (= row col))
         1)
        (else (+ (pascal (- col 1) (- row 1))
                 (pascal col (- row 1))))))

(pascal 2 4)
