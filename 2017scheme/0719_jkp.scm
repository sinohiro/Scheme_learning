#!/usr/local/bin/gosh

(sys-srandom (sys-time))

(define random-x
  (lambda (x)
    (modulo (sys-random) x)))

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

(define	janken
  (lambda (x y)
    (cond ((and (eq? (rsp? x y) '#t) (eq? (rsp? y x) '#f)) (print "I am "x". You are "y". I win. You lose.") 1)
          ((and (eq? (rsp? x y) '#t) (eq? (rsp? y x) '#t)) (print "I am "x". You are "y". We are drow.") 0)
          ((and (eq? (rsp? x y) '#f) (eq? (rsp? y x) '#t)) (print "I am "x". You are "y". I lose. You win.") -1)
          (else 'error3))))


(define jankenplay
  (lambda (y)
    (janken (random-rsp) y)))

(define y "")

(define input (lambda ()
	(display "janken_play:")(flush)
	(set! y (read))
	(jankenplay y)))

(input)
