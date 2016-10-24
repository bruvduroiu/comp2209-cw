;;; Coursework 1
;;; Question 03
;;; Bogdan Buduroiu (bb4g15@soton.ac.uk)

;;; solution:

(load "assoc-all")
(load "remove-alist-all")

(define group-by-key
	(lambda (l)
		(if (null? l) '()
			(cons 
				(append (list (car (car l))) (assoc-all (car (car l)) l))
				(group-by-key (remove-alist-all (car (car l)) l))))))

;;; This function uses the assoc-all function to build tuples of values that have the 
;;; same key.

;;; It then recursively calls itself on the result of the remove-alist-all function
;;; (which removes all the pairs that have already been added to the list in the 
;;; previous step.
