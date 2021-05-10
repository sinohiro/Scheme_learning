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
