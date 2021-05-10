#!/usr/local/bin/gosh

(define seiseki
	(lambda (x)
	(cond 
	((and (>= x 90) (<= x 100)) '秀)
	((and (>= x 80) (< x 90)) '優)
	((and (>= x 70) (< x 80)) '良)
	((and (>= x 60) (< x 70))'可)
	((and (>= x 0) (<= x 59)) '不可)
	(else 'error))))

(define x "")

(define input (lambda ()
	 (display "入力してどうぞ:")(flush)
	 (set! x (read))
	 (if (eq? x '悔い改めて) (print "臭いです")
	 (print "その点数は "(seiseki x)" ですね"))))

(input)
