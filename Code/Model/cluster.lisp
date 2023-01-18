(cl:in-package #:clovetree-model)

;;; A cluster represents a collection of notes plus annotations such
;;; as articulations that are common for all notes in a cluster.

(defgeneric noteheads (cluster))

(defgeneric (setf noteheads) (new-noteheads cluster))

(defclass cluster (temporal-element)
  ((%noteheads
    :initform '()
    :initarg :noteheads
    :accessor noteheads)))
