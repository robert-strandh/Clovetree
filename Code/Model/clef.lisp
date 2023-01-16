(cl:in-package #:clovetree-model)

;;; The size of a clef is a small integer, where 0 means normal size,
;;; positive values indicate larger sizes, and negative values
;;; indicate smaller sizes.

(defgeneric size (clef))

(defgeneric (setf size) (new-size clef))

;;; The position of a clef is relative to the middle staff line.  A
;;; value of 0 indicates the middle staff line.  A negative integer
;;; indicates the number of half staff steps below the middle staff
;;; line.  A positive integer indicates the number of half staff steps
;;; above the middle staff line.

(defgeneric position (clef))

(defgeneric (setf position) (new-position clef))

(defclass clef ()
  ((%size
    :initarg :size
    :accessor size)
   (%position
    :initarg :position
    :accessor position)))

(defclass g-clef (clef)
  ()
  (:default-initargs :position -2))

(defclass f-clef (clef)
  ()
  (:default-initargs :position 2))

(defclass c-clef (clef)
  ()
  (:default-initargs :position 0))
