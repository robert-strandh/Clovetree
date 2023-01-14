(cl:in-package #:clovetree-gui)

(define-clovetree-command (quit :name t) ()
  (clim:frame-exit clim:*application-frame*))
