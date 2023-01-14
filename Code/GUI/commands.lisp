(cl:in-package #:clovetree-gui)

(define-clovetree-command (com-quit :name t) ()
  (clim:frame-exit clim:*application-frame*))
