(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? old-guess new-guess)
  (> 0.01
     (/ (abs(- new-guess old-guess)) ;检测新旧两次猜测值之间的比率,当比率变化非常小时,程序就停止improve 
        old-guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
