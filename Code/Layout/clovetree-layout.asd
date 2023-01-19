(cl:in-package #:asdf-user)

(defsystem #:clovetree-layout
  :depends-on (#:clovetree-model)
  :serial t
  :components
  ((:file "packages")
   (:file "positional-element")))
