(cl:in-package #:clovetree-model)

(defgeneric title (score))

(defgeneric (setf title) (new-title score))

(defgeneric parts (score))

(defgeneric (setf parts) (new-parts score))

(defclass score ()
  ((%title
    :initarg :title
    :initform nil
    :accessor title)
   (%parts
    :initform '()
    :accessor parts)))
