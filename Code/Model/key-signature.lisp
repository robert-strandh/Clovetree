(cl:in-package #:clovetree-model)

(defclass key-signature () ())

;;; In a standard key signature, we just count the accidentals.  A
;;; positive integer indicates that number of sharp sign.  A negative
;;; integer indicates a number of flat signs corresponding to the
;;; absolute value of the integer.

(defgeneric accidental-count (key-signature))

(defgeneric (setf accidental-count) (new-accidental-count key-signature))

(defclass standard-key-signature (key-signature)
  ((%accidental-count
    :initarg :accidental-count
    :accessor accidental-count)))
