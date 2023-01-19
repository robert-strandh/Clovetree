(cl:in-package #:clovetree-layout)

;;; A positional element is an element that is placed at a particular
;;; staff position on a particular staff.

;;; The staff position is indicated by an integer where 0 means the
;;; middle line of a five-line staff, a positive numbers indicates
;;; that many half staff-steps up, and a netative number indicates
;;; that many half staff-steps down.

(defgeneric staff (positional-element))

(defgeneric position (clef))

(defclass positional-element ()
  ((%staff
    :initarg :staff
    :reader staff)
   (%position
    :initarg :position
    :reader position)))
