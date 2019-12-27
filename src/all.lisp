;;; This file re-exports all public symbols in :PROJECT/MAIN.
;;; This provides a syntax-sugar for package name.
;;; Because of this, client of this library can call symbol by `(project:main)`, not by `(project/main:main)`.

(uiop/package:define-package :project/all
  (:nicknames :project)
  (:use-reexport :project/main))
