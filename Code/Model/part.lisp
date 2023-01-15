(cl:in-package #:clovetree-model)

(defgeneric elements (part))

(defgeneric (setf elements) (new-elements part))

(defclass part ()
  ((%elements
    :initform '()
    :accessor elements)))
