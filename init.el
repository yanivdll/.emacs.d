;;; Path to the lisp directory, where user custom packages reside.
;;; Must have it here in order for the use-package to load
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;;; Load use-package
(eval-when-compile
  (require 'use-package))
;(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                 ;; if you use any :bind variant

;;; Load the org file and convert it into el that will add to this init file
(org-babel-load-file (concat user-emacs-directory "config.org"))
