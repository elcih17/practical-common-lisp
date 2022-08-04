;; (defun name (parameter*)
;;   "Optional documentation string."
;;   body-form*)

;; (defun foo (a &optional (b 10 b-supplied-p)) (list a b b-supplied-p))
;; (foo 1 2)
;; (foo 1)

;; (defun foo (&key a b) (list a b))
;; (foo)
;; (foo :a 1)
;; (foo :b 1)
;; (foo :b 1 :a 2)

(defun foo (&rest rest &key a b c) (list rest a b c ))
(foo :a 1 :b 2 :c 3)

(defun plot (fn min max step)
  (loop for i from min to max by step do
        (loop repeat (funcall fn i) do (format t "*"))
        (format t "~%")))

;; (plot #'exp 0 4 1/2)

(plot #'(lambda (x) (* x x)) 0 100 2)
