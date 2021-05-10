(define logical-nand
  (lambda (input-x input-y)
    (cond ((and (= input-x 0) (= input-y 0)) 1)
          ((and (= input-x 0) (= input-y 1)) 1)
          ((and (= input-x 1) (= input-y 0)) 1)
          ((and (= input-x 1) (= input-y 1)) 0)
          (else 'error))))

(define logical-and
  (lambda (x y)
    (logical-nand (logical-nand x y) (logical-nand x y))))

(define logical-or
  (lambda (x y)
    (logical-nand (logical-nand x x) (logical-nand y y))))

(define logical-not
  (lambda (x) (logical-nand x x)))

(define logical-xor
  (lambda (x y)
    (logical-nand (logical-nand x (logical-nand x y))
                  (logical-nand (logical-nand x y) y))))

(define ha-s
  (lambda (a b)
    (logical-and (logical-or a b) (logical-not (logical-and a b)))))

(define ha-c
  (lambda (a b)
    (logical-and a b)))

(define fa-s
  (lambda (a b c)
    (ha-s a (ha-s b c))))

(define fa-c
  (lambda (a b c)
    (logical-or (ha-c a (ha-s b c)) (ha-c b c))))
