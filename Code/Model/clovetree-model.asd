(cl:in-package #:asdf-user)

(defsystem #:clovetree-model
  :serial t
  :components
  ((:file "packages")
   (:file "score")
   (:file "measure-separator")
   (:file "key-signature")
   (:file "time-signature")
   (:file "clef")
   (:file "temporal-element")
   (:file "cluster")
   (:file "part")))
