(cl:in-package #:clovetree-model)

(defgeneric elements (part))

(defgeneric (setf elements) (new-elements part))

(defclass part ()
  ((%elements
    :initform (list (make-instance 'measure-separator
                      :strengh most-positive-fixnum))
    :accessor elements)))
