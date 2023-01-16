(cl:in-package #:asdf-user)

(defsystem #:clovetree-model
  :serial t
  :components
  ((:file "packages")
   (:file "score")
   (:file "measure-separator")
   (:file "key-signature")
   (:file "part")))
