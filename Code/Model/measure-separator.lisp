(cl:in-package #:clovetree-model)

;;; The STRENGH of a measure separator indicates how measures are
;;; aligned.  The part is split up according to measure separators
;;; with the highest strengh first.  The sections obtained this way in
;;; each part are then aligned.  Then each section is split up
;;; according to the next highest strength, etc.

(defgeneric strength (measure-separator))

(defgeneric (setf strength) (new-strength measure-separator))

(defclass measure-separator ()
  ((%strength
    :initarg :strength
    :initform 0
    :accessor strength)))
