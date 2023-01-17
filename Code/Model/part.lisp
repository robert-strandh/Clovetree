(cl:in-package #:clovetree-model)

;;; A part can have one staff or several staves, then usually two.

(defgeneric staves (part))

(defgeneric (setf staves) (new-staves part))

(defgeneric elements (part))

(defgeneric (setf elements) (new-elements part))

(defclass part ()
  ((%staves
    :initarg :staves
    :accessor staves)
   (%elements
    :initform (list (make-instance 'measure-separator
                      :strengh most-positive-fixnum))
    :accessor elements)))
