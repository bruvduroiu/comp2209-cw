;;; Coursework 1
;;; Question 02
;;; Bogdan Buduroiu (bb4g15@soton.ac.uk)

;;; solution:

(define remove-alist-all 
	(lambda (s l)
		(if (null? l)
			'()
			(if (equal? s (car(car l)))
				(remove-alist-all s (cdr l))
				(cons (car l)
					(remove-alist-all s (cdr l)))))))


;;; The remove-alist-all function just skips over the matched pair 
;;; (by recursively calling itself on the cdr of the list) when 
;;; a pair matches the symbol passed as a parameter.

;;; Otherwise, it just constructs a new list with the car of the
;;; current list, plus the result of the recursive call on the cdr
