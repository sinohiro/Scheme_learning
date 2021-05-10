(define  calc-di (lambda (U T) (+ (+ (* (- (* 0.99 T) 14.3) (* 0.01 U)) (* 0.81 T)) 46.3)))

  (define print
    (lambda (U T)
      (cond
      ((>= (calc-di U T) 75) 'hot)
      ((>= (calc-di U T) 60) 'good)
      ((< (calc-di U T) 60) 'cold)
      )
    )
  )
