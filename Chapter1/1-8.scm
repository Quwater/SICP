(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess))
                    3))

(define (good-enough? old-guess new-guess)
  (> 0.01
     (/ (abs(- new-guess old-guess)) ;检测新旧两次猜测值之间的比率,当比率变化非常小时,程序就停止improve 
        old-guess)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 27)