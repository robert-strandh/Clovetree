(cl:in-package #:clovetree-gui)

(define-clovetree-command (com-quit :name t) ()
  (clim:frame-exit clim:*application-frame*))

(define-clovetree-command (com-load-score-file :name t)
    ((pathname 'pathname
               :default *default-pathname-defaults*
               :insert-default t))
  (declare (ignore pathname)))
