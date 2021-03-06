(define random-x
  (lambda (x)
    (modulo (sys-time) x)))

(define random-rsp
  (lambda ()
    (let ((x (random-x 3)))
      (cond ((= x 0) 'rock)
            ((= x 1) 'paper)
            ((= x 2) 'scissors)
            (else 'error1)))))


(define rsp?
  (lambda (x y)
    (cond ((and (eq? x 'rock) (eq? y 'paper)) '#f)
          ((and (eq? x 'rock) (eq? y 'scissors)) '#t)
          ((and (eq? x 'rock) (eq? y 'rock)) '#t)
          ((and (eq? x 'scissors) (eq? y 'paper)) '#t)
          ((and (eq? x 'scissors) (eq? y 'scissors)) '#t)
          ((and (eq? x 'scissors) (eq? y 'rock)) '#f)
          ((and (eq? x 'paper) (eq? y 'paper)) '#t)
          ((and (eq? x 'paper) (eq? y 'scissors)) '#f)
          ((and (eq? x 'paper) (eq? y 'rock)) '#t)
          (else 'error2))))


(define janken
  (lambda (x y)
    (cond ((rsp? x y) (print "私の勝ち、あなたの負け") 1)
          ((eq? x y)(print "引き分け") 0)
          ((not (rsp? x y)) (print "私の負け、あなたの勝ち") -1)
          (else 'error3))))


(define jankenplay
  (lambda (y)
    (janken (random-rsp) y)))
