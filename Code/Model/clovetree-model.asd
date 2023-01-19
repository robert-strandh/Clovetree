(cl:in-package #:asdf-user)

;;;; This system contains definitions of classes, the instances of
;;;; which will appear in scores, and that are specific to each score.
;;;; For example, NOTE is a class and it will have instances in
;;;; various parts of a score.  Such an instance will indicate where
;;;; in the part it is located.  However, an instance of NOTE will
;;;; contain a reference to a particular kind of notehead, but the
;;;; notehead class is not part of the model, and instead part of the
;;;; meta model.  Instances of classes belonging to the model will be
;;;; saved in score files, but instances of classes belonging to the
;;;; meta model will be an intrinsic part of the Clovetree system.

(defsystem #:clovetree-model
  :serial t
  :components
  ((:file "packages")
   (:file "score")
   (:file "measure-separator")
   (:file "key-signature")
   (:file "time-signature")
   (:file "positional-element")
   (:file "clef")
   (:file "temporal-element")
   (:file "rest")
   (:file "cluster")
   (:file "part")
   (:file "notehead")
   (:file "accidental")
   (:file "beam")
   (:file "staff")))
