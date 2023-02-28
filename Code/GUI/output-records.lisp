(cl:in-package #:clovetree-gui)

(defclass record (clim:output-record)
  ((%x-position :initarg :x-position :reader x-position)
   (%parent :initarg :parent :reader parent)))

(defclass compound-record (record)
  ((%contents :initarg :contents :accessor contents)))

(defclass displayed-record (record clim:displayed-output-record)
  ())

(defclass notehead-record (displayed-record)
  ())

(defclass stem-record (displayed-record)
  ())

(defclass rest-record (displayed-record)
  ())

(defclass accidental-record (displayed-record)
  ())

(defclass flag-record (displayed-record)
  ())

(defclass beam-record (displayed-record)
  ())

(defclass cluster-record (compound-record)
  ())

(defclass part-record (compound-record)
  ())

(defclass system-record (compound-record)
  ())

(defclass page-record (compound-record)
  ())