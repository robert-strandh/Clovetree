(cl:in-package #:clovetree-model)

;;; A cluster represents a collection of notes plus annotations such
;;; as articulations that are common for all notes in a cluster.

(defgeneric notes (cluster))

(defgeneric (setf notes) (new-notes cluster))

(defclass cluster (temporal-element)
  ((%notes
    :initform '()
    :initarg :notes
    :accessor notes)))
