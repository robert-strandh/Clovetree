(cl:in-package #:clovetree-model)

;;; The position of the rest can be NIL or an integer representing the
;;; staff position.  If it is NIL, that means the default position for
;;; the rest with the duration indicated by a slot in the superclass.

(defclass rest (temporal-element)
  ((%position
    :initform nil
    :initarg :position
    :accessor position)))
