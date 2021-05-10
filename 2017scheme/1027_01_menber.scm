(define member?
  (lambda (a lat)
    (cond ((null? lat) #f)
          ((eq? (car lat) a) #t)
          (else (member? a (cdr lat))))))

(define member?2
  (lambda (a lat)
    (if (null? lat) #f
        (if (eq? (car lat) a) #t
            (member? a (cdr lat))))))

オォン　イキスギィ　イクイク　ンアァー

