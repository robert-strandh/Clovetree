(cl:in-package #:clovetree-model)

;;; A cluster represents a collection of noteheads plus annotations
;;; such as articulations that are common for all noteheads in a
;;; cluster.

(defgeneric noteheads (cluster))

(defgeneric (setf noteheads) (new-noteheads cluster))

(defgeneric beams (cluster))

(defgeneric (setf beams) (new-beams cluster))

(defclass cluster (temporal-element)
  ((%noteheads
    :initform '()
    :initarg :noteheads
    :accessor noteheads)
   ;; This slot contains a list of instances of the class BEAM.  The
   ;; beams in the list are ordered from the one furthest from the
   ;; noteheads to the one closest to the noteheads.  If the list is
   ;; empty, but the duration of the cluster requires beams or flags,
   ;; then the number of flags required is computed automatically.
   (%beams
    :initform '()
    :initarg :beams
    :accessor beams)))
