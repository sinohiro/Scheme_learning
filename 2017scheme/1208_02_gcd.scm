(define mygcd
  (lambda (a b)
    (if (= (modulo a b) 0) b
        (mygcd b (modulo a b)))))
