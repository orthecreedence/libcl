(defpackage :cl.core
  (:use)
  (:import-from :cl
                :cons
                :list
                :list*
                :nil
                :t
                :car
                :cdr
                :reverse

                :defpackage
                :use-package
                :in-package
                :import
                :export

                :declare
                :declaim
                :proclaim

                :&rest
                :&key
                :&optional
                :&aux

                :lambda
                :let

                :block
                :let*
                :return-from
                :catch
                :load-time-value
                :setq
                :eval-when
                :locally
                :symbol-macrolet
                :flet
                :macrolet
                :tagbody
                :function
                :multiple-value-call
                :the
                :go
                :multiple-value-prog1
                :throw
                :if
                :progn
                :unwind-protect
                :labels
                :progv
                :let
                :quote

                :unwind-protect
                :handler-bind

                :defvar

                :defun
                :defmacro

                :values
                :multiple-value-call

                :setq
                :setf
                :define-setf-expander

                :=
                :eq
                
                :+
                :-
                :*
                :/
                
                :concatenate)
  (:export :cons
           :list
           :list*
           :nil
           :t
           :car
           :cdr
           :reverse

           :defpackage
           :use-package
           :in-package
           :import
           :export

           :declare
           :declaim
           :proclaim

           :&rest
           :&key
           :&optional
           :&aux

           :lambda
           :let

           :block
           :let*
           :return-from
           :catch
           :load-time-value
           :setq
           :eval-when
           :locally
           :symbol-macrolet
           :flet
           :macrolet
           :tagbody
           :function
           :multiple-value-call
           :the
           :go
           :multiple-value-prog1
           :throw
           :if
           :progn
           :unwind-protect
           :labels
           :progv
           :let
           :quote

           :unwind-protect
           :handler-bind

           :defvar

           :defun
           :defmacro

           :values
           :multiple-value-call

           :setq
           :setf
           :define-setf-expander

           :=
           :eq

           :+
           :-
           :*
           :/

           :concatenate
           :import-and-export))

(defmacro import-and-export (from &rest symbols)
  `(progn
     ,@(let ((col nil)
             (iter symbols))
         (tagbody
           next
             (if (eq iter nil)
                 (go end)
                 (let ((sym (car iter)))
                   (setq iter (cdr iter))
                   (setq col (cons `(import ',sym ,from) col))
                   (setq col (cons `(export ',sym) col))
                   (go next)))
           end)
         (reverse col))))

