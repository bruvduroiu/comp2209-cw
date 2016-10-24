;;; Coursework 1
;;; Question 1
;;; Bogdan Buduroiu (bb4g15@soton.ac.uk)

;;; solution:

(define assoc-all
	(lambda (s l)
		(if (null? l)
			'()
			(if (equal? s (car(car l))) 
				(cons (cdr(car l))
					(assoc-all s (cdr l)))
				(assoc-all s (cdr l))))))
			 
;;; The function assoc-all checks the caar of each list
;;; against the symbol passed to the function.
;;; It creates a new list by constructing the 
;;; cdr of the matched pair with the result of the
;;; recursive call (where the cdr of the initial list
;;; is passed).
