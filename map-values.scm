;;; Coursework 1
;;; Question 04
;;; Bogdan Buduroiu (bb4g15@soton.ac.uk) 

;;; solution:

(define map-values
	(lambda (l f)
		(if (null? l) '()
			(cons (cons (car (car l)) (f (cdr (car l)))) 
				(map-values (cdr l) f)))))

;;; The function simply applies the function f on the list.
;;; However, it forms new pairs doing so.
