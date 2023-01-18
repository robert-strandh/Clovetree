(cl:in-package #:clovetree-model)

;;; A beam has a list of clusters that it links.  These clusters in
;;; the list are ordered from left to right.

(defgeneric clusters (beam))

(defgeneric (setf clusters) (new-clusters beam))

(defclass beam ()
  ((%clusters
    :initarg :clusters
    :accessor clusters)))
