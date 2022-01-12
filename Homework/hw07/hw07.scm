(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s) (cond ((null? s) #t) ((null? (cdr s)) #t) ((> (car s) (cadr s)) #f) (else (ordered? (cdr s)))))

(define (square x) (* x x))

(define (pow base exp) (cond ((zero? exp) 1) ((even? exp) (square (pow base (/ exp 2)))) ((odd? exp) (* base (pow base (- exp 1))))))
