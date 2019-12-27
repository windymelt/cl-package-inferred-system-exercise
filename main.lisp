(in-package :cl-user)
;;; In package-inferred-system, package name must be prefixed by `<system>/`.
;;; For example, this system has a name of `project` and this package name must be prefixed by `project/`.
(defpackage :project/main
  ;; Dependencies between modules are automatically resolved in package-inferred-system.
  ;; So all you need is declare dependency in :use (:import-from) clause.
  ;; For example, this form USEs :project/subcompnent-1 package, implcitly declaring dependency for same module.
  (:use :cl :project/subcomponent-1)
  (:export :main))
(in-package :project/main)

(defun main () (format t "hello, main and ~A!~%" (sub)))
