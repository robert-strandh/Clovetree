(cl:in-package #:asdf-user)

(defsystem #:clovetree-gui
  :depends-on (#:mcclim)
  :serial t
  :components
  ((:file "packages")
   (:file "gui")
   (:file "commands")
   (:file "output-records")))
