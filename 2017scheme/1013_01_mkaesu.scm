(define mjo
  (lambda (n m)
    (if (= n 1) (expt n m)
        #?=(+ (expt n m) (mjo (- n 1) m)))))
