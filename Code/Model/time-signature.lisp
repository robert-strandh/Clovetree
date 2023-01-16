(cl:in-package #:clovetree-model)

(defclass time-signature () ())

(defgeneric beat-count (time-signature))

(defgeneric beat-type (time-signature))

(defclass numeric-time-signature (time-signature)
  ((%beat-count
    :initarg :beat-count
    :reader beath-count)
   (%beat-type
    :initarg :beat-type
    :reader beat-type)))

(defclass common-time-signature (time-signature)
  ())

(defmethod beat-count ((time-signature common-time-signature))
  4)

(defmethod beat-type ((time-signature common-time-signature))
  4)

(defclass cut-common-time-signature (time-signature)
  ())

(defmethod beat-count ((time-signature cut-common-time-signature))
  2)

(defmethod beat-type ((time-signature cut-common-time-signature))
  2)
