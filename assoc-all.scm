(define assoc-all
	(lambda (s l)
		(if (null? l)
			'()
			(if (equal? s (car(car l))) 
				(cons (cdr(car l))
					(assoc-all s (cdr l)))
				(assoc-all s (cdr l))))))
			 

(assoc-all 'a '((b . c) (a . 1) (c . e) (a . 2)))
