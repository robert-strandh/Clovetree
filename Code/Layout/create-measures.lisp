(cl:in-package #:clovetree-layout)

(defgeneric parts (measure))

(defclass measure ()
  ((%parts
    :initarg :parts
    :reader parts)))

(defun new-measure (parts)
  (make-instance 'measure
    :parts (make-array (length parts) :initial-element '())))
