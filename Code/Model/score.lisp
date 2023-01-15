(cl:in-package #:clovetree-model)

(defclass score ()
  ((%title
    :initarg :title
    :initform nil
    :accessor title)
   (%parts
    :initform '()
    :accessor parts)))
