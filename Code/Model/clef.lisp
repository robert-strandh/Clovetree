(cl:in-package #:clovetree-model)

;;; The size of a clef is a small integer, where 0 means normal size,
;;; positive values indicate larger sizes, and negative values
;;; indicate smaller sizes.

(defgeneric size (clef))

(defgeneric (setf size) (new-size clef))

(defclass clef (positional-element)
  ((%size
    :initarg :size
    :accessor size)))

(defclass g-clef (clef)
  ()
  (:default-initargs :position -2))

(defclass f-clef (clef)
  ()
  (:default-initargs :position 2))

(defclass c-clef (clef)
  ()
  (:default-initargs :position 0))
