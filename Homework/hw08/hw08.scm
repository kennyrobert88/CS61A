(define (my-filter func lst) (cond ((null? lst) '()) ((func (car lst)) (cons (car lst) (my-filter func (cdr lst))))(else (my-filter func (cdr lst)))))

(define (interleave s1 s2) (cond ((null? s1) s2) (else (cons (car s1) (interleave s2 (cdr s1))))))

(define (accumulate merger start n term) (if (> n 1) (merger (term n) (accumulate merger start (- n 1) term)) (merger start (term n))))

(define (no-repeats lst) (if (null? lst) lst (cons (car lst) (no-repeats (filter (lambda (x) (not (= (car lst) x))) (cdr lst))))))
