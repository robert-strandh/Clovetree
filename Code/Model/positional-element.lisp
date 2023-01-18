(cl:in-package #:clovetree-model)

;;; A positional element is an element that is placed at a particular
;;; staff position on a particular staff of a part.

;;; The staff is indicated by a non-negative integer which is an index
;;; into the list of staves of the part of which the positional
;;; element is an element.

;;; The staff position is indicated either by NIL, meaning some
;;; default position, by an integer where 0 means the middle line of a
;;; five-line staff, a positive numbers indicates that many half
;;; staff-steps up, and a netative number indicates that many half
;;; staff-steps down.

(defgeneric staff-number (positional-element))

(defgeneric (setf staff-nunber) (new-staff-number positional-element))

(defgeneric position (clef))

(defgeneric (setf position) (new-position clef))

(defclass positional-element ()
  ((%staff-number
    :initarg :staff-number
    :accessor staff-number)
   (%position
    :initarg :position
    :accessor position)))
