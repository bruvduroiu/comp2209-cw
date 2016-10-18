(define remove-alist-all 
	(lambda (s l)
		(if (null? l)
			'()
			(if (equal? s (car(car l)))
				(remove-alist-all s (cdr l))
				(cons (car l)
					(remove-alist-all s (cdr l)))))))


