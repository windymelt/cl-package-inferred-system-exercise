(in-package :cl-user)
(defpackage cl-package-inferred-system-exercise-asd
  (:use :cl :asdf))
(in-package :cl-package-inferred-system-exercise-asd)

#+sbcl(setf sb-impl::*default-external-format* :utf-8)
#+sbcl(setf sb-alien::*default-c-string-external-format* :utf-8)

(defsystem project
  :version "0.1"
  :author "Windymelt"
  :license "MIT"
  :class :package-inferred-system ;; You should specify this to use package-inferred-system.
  :defsystem-depends-on (:asdf-package-system) ;; You should specify this to use package-inferred-system.
  :depends-on (:project/all) ;; Root dependency. Package PROJECT/ALL is defined at `all.lisp`.
  :pathname "src" ;; This clause modifies package prefix.
  :description "An example project illustrating package-inferred-system")
