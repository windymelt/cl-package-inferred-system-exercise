(in-package :cl-user)
;;; This module defines subcomponent.
(defpackage :project/subcomponent-1
  (:use :cl)
  (:export :sub))
(in-package :project/subcomponent-1)

(defun sub () "subcomponent")
