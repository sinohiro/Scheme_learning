#!/usr/local/bin/gosh

(define seiza
  (lambda (x y)
    (cond ((or (and (= x 3) (>= y 21)) (and (= x 4) (<= y 20))) 'aries)
          ((or (and (= x 4) (>= y 21)) (and (= x 5) (<= y 21))) 'taurus)
          ((or (and (= x 5) (>= y 22)) (and (= x 6) (<= y 21))) 'gemini)
          ((or (and (= x 6) (>= y 22)) (and (= x 7) (<= y 22))) 'cancer)
          ((or (and (= x 7) (>= y 23)) (and (= x 8) (<= y 23))) 'leo)
          ((or (and (= x 8) (>= y 24)) (and (= x 9) (<= y 23))) 'virgo)
          ((or (and (= x 9) (>= y 24)) (and (= x 10) (<= y 23))) 'libra)
          ((or (and (= x 10) (>= y 24)) (and (= x 11) (<= y 22))) 'scorpio)
          ((or (and (= x 11) (>= y 23)) (and (= x 12) (<= y 22))) 'sagittarius)
          ((or (and (= x 12) (>= y 23)) (and (= x 1) (<= y 20))) 'capricorn)
          ((or (and (= x 1) (>= y 21)) (and (= x 2) (<= y 19))) 'aquarius)
          ((or (and (= x 2) (>= y 20)) (and (= x 3) (<= y 20))) 'pisces)
          (else 'errer)
          )))

(define	zokusei
  (lambda (x y)
    (cond ((or (eq? (seiza x y) 'aries) (eq? (seiza x y) 'leo) (eq? (seiza x y) 'sagittarius)) 'flame)
          ((or (eq? (seiza x y) 'cancer) (eq? (seiza x y) 'scorpio) (eq? (seiza x y) 'pisces)) 'aqua)
          ((or (eq? (seiza x y) 'gemini) (eq? (seiza x y) 'aquarius) (eq? (seiza x y) 'libra)) 'wind)
          ((or (eq? (seiza x y) 'taurus) (eq? (seiza x y) 'virgo) (eq? (seiza x y) 'capricorn)) 'earth)
          (else 'error)
          )))


(define x "")
(define y "")

(define input (lambda ()
         (display "あなたの生まれた月を入力してどうぞ:")(flush)
         (set! x (read))
	 (display "あなたの生まれた日を入力してどうぞ:")(flush)
	 (set! y (read))
         (print "あなたの星座は "(seiza x y)" です")
	 (print "星座の属性は"(zokusei x y)" です")))

(input)

