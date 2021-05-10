#!/usr/local/bin/gosh

(define soul
  (lambda (x)
    (cond ((= x 1) 'アイデアマン)
          ((= x 2) '平和主義)
          ((= x 3) 'お祭り大好き)
          ((= x 4) '保守的)
          ((= x 5) 'パイオニア)
          ((= x 6) 'ロマンチスト)
          ((= x 7) 'インテリ)
          ((= x 8) '大物)
          ((= x 9) 'エンターテイナー)
	  ((else 'error)
    )
  )
)


(define nkoume
  (lambda (x y)
    (define n-k
      (lambda (n k)
        (if (= k 1) (modulo n 10) (n-k (/ (- n (modulo n 10)) 10) (- k 1)))
      )
    )

    (if (and (< 0 x) (< 0 y) (<= (expt 10 (- y 1)) x)) (n-k x y) 0)
    )
  )


(define myplus
  (lambda (x)
    (+ (nkoume x 1) (* 10 (nkoume x 2)) (nkoume x 3) (* 10 (nkoume x 4)) (nkoume x 5) (* 10 (nkoume x 6)) (* 100 (nkoume x 7)) (* 1000 (nkoume x 8)))
  )
)

(define oneketa
  (lambda (x)
    (if (< x 10) (+ 0 x) (oneketa (+ (nkoume x 1) (nkoume x 2) (nkoume x 3) (nkoume x 4))))
    )
  )

(define main
 (lambda (x)
   (print "あなたは"(soul (oneketa (myplus (string->number (cadr x)))))"です")
 )
)
