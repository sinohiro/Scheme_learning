(define random-x
  (lambda (x)
    (modulo (sys-random) x)))

(define random-rsp
  (lambda ()
    (let ((x (random-x 3)))
      (cond ((= x 0) 'rook)
            ((= x 1) 'paper)
            ((= x 2) 'scissors)
            (else 'error)))))
