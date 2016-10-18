(load "assoc-all")
(load "remove-alist-all")

(define group-by-key
	(lambda (l)
		(if (null? l) '()
			(cons 
				(append (list (car (car l))) (assoc-all (car (car l)) l))
				(group-by-key (remove-alist-all (car (car l)) l))))))
