(define group-by-key
	(lambda (l)
		(if (null? l) '()
			(begin
				(cons 
					(foldl (lambda (key values)
						(cons key (cdr values)))
						(car (car l))
						(assoc-all (car (car l))))
					(remove-alist-all (car (car l)) l))))))	
