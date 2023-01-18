(cl:in-package #:clovetree-model)

;;; The accidental of a notehead can be NIL or an instance of the class
;;; ACCIDENTAL.

(defgeneric accidental (notehead))

(defgeneric (setf accidental) (new-accidental notehead))

(defclass notehead (positional-element)
  ((%accidental
    :initform nil
    :initarg :accidental
    :accessor accidental)))

(defclass whole-notehead (notehead)
  ())

(defclass half-notehead (notehead)
  ())

(defclass filled-notehead (notehead)
  ())
