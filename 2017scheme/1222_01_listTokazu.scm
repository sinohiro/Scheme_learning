(define listKazu
  (lambda (n)
    (cond ((eq? (cdr n) ()) (car n))
          (else (+ (* (car n) (expt 10 (- (length n) 1))) (listKazu (cdr n)))))))
 
