(cl:in-package #:clovetree-model)

;;; A temporal element is an object that can be an element of a part,
;;; and that has a certain duration.  Examples of temporal elements
;;; are rests and clusters.

;;; The duration of a temporal element is a ratio that corresponds to
;;; traditional values for notes and rests.

(defgeneric duration (temporal-element))

(defclass temporal-element ()
  ())
