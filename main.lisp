(in-package :cl-user)
(defpackage :project/main
  (:use :cl :project/subcomponent-1)
  (:export :main))
(in-package :project/main)

(defun main () (format t "hello, main and ~A!~%" (sub)))
