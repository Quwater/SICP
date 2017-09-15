(define (f n)  ; 递归
  (cond ((< n 3) n)
        ((>= n 3) (+ (f (- n 1))
                     (* 2 (f (- n 2)))
                     (* 3 (f (- n 3)))))))

(f 4)

(define (F n)
  (F-iter 2 1 0 0 n))
(define (F-iter a b c i n)
  (if (= i n)
      c
      (F-iter (+ a (* 2 b) (* 3 c)) ; new a
                 a                  ; new b
                 b                  ; new c
                 (+ i 1)
                 n)))
(F 4)