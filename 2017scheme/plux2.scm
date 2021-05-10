#!/usr/local/bin/gosh

(define main (lambda (argv)
 (print
     (+ (string->number (cadr argv))
	(string->number (caddr argv)))
)))
