(cl:in-package #:clovetree-gui)

(clim:define-application-frame clovetree ()
  ()
  (:panes
   (score :application
          :scroll-bars nil
          :display-time nil)
   (interactor :interactor
               :scroll-bars nil))
  (:layouts
   (default (clim:vertically ()
              (:fill (clim:scrolling (:width 1000 :height 1000)
                       score))
              (clim:scrolling (:width 1000 :height 100)
                interactor)))))

(defun clovetree (&key new-process (process-name "Clovetree"))
  (with-open-file (stream
                   (uiop:xdg-config-home "clovetree" "init.lisp")
                   :if-does-not-exist nil)
    (unless (null stream)
      (load stream)))
  (let ((frame (clim:make-application-frame
                'clovetree)))
    (flet ((run () (clim:run-frame-top-level frame)))
      (if new-process
          (clim-sys:make-process #'run :name process-name)
          (run)))))
