(define kushirosaiko2016 '(1.1 2.9 2.3 1.9 -0.3 1.2 1 1.8 0.1 2 -2.2 -2.4 -0.8 0.3 -4 -1.1 -1 -1.9 0.9 1.8 -0.8 1.1 -0.1 -2.3 -4 1.6 3.4 1.1 -2 -3.3 -1.8 -2.3 -2.4 -2.7 1 2.2 -0.4 -1.4 -2 2 3.1 1.7 1.2 5.7 3.6 1.1 -1.1 1 2.6 4.4 4.4 1.9 1 1.6 -5 -2.4 -0.2 0 -1.5 -1 1.3 -0.9 -1.2 -0.6 1 3.4 11.2 5.3 3.2 1.1 1.5 1.6 1.9 2.6 3.8 4.9 14 7.7 8.1 4 5 4.3 5.6 3.1 1.9 3.5 6.3 8 6.1 9 9.6 6.7 4.1 6.1 7.2 7.8 12.9 9.4 7 12.4 11 6.3 7.6 8.1 13.3 10.4 12.9 8.6 10.5 4.5 7.1 11 16 5 15.1 10.6 11.1 8.1 8.4 3.8 10.1 10.8 10 11.9 11.2 12.2 14.5 12.9 18.9 16.3 15.5 8.4 16.6 16.8 19.2 12.9 9.9 10.3 20 14.7 15.2 17.5 17.2 19.4 18.3 12.9 14.7 21.7 18.8 19.4 11 12.8 12.3 11.4 13.8 8.2 15 16.7 16.2 18.8 16 21 21 11.4 13.6 16.1 13.6 14.2 12.8 14.7 16.6 15.7 16.4 13.8 12.4 13.6 14.3 15.5 17 18.7 19.3 17.6 21.1 18.4 25.4 19.2 16.8 15.1 17 17.1 18.2 23.3 23.6 21.1 18 19.5 23.8 19.7 18.4 18.8 17.7 19.3 19.8 16.9 17.9 17.9 19.8 18.9 21 19.8 20.2 20.8 21.5 22.5 28.7 23.5 25.6 30.3 25.3 25.2 24.7 23.4 26.2 22.9 23 23.7 26.2 22.6 23.1 23.6 22.9 23 22.9 22.8 22.5 24.3 26.9 23.3 22.6 24 19.1 23.1 23.1 24.9 23.7 24.6 23 22.8 23.4 22.8 27.1 19 18.1 24.3 21.3 19.4 20.9 21.6 22.1 20.4 23 15.5 17.4 19.4 21.2 19.7 18.7 19 21.3 22.9 20.1 20.7 16.8 18.7 21 21.1 19.7 20.7 14.9 18 14.3 13.5 17.7 14.3 15 15 15.2 15 14.4 18.7 16.2 20.4 16.2 15.8 10.7 9.8 10.2 9.7 11.6 16.4 9.8 11.1 8.4 7.6 12.3 4.9 6.9 6.3 5.4 3 5.6 4.3 11.8 7.7 5.6 4.8 6.3 11.9 10 13.1 4.9 4.4 9.8 12.4 11 4.3 2.8 -0.1 -0.4 2.6 3.5 2.1 6.8 4.1 1.3 9.1 6 6.4 8.4 9.4 2.7 -1.4 1.4 1.6 0.3 -2.7 0.7 1.3 -0.2 -2 -1.3 -0.8 7.2 2.7 4.4 2.6 0.3 0.2 -2.4 1 5.2 1.6 -4.2 -2.3 -0.8 -0.7))

(define count-mahuyu
  (lambda (x)
    (cond ((null? x) 0)
          ((> 0 (car x))
           (+ 1 (count-mahuyu (cdr x))))
          (else (count-mahuyu (cdr x))))))
