;;; Path to the lisp directory, where user custom packages reside.
;;; Must have it here in order for the use-package to load
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes t)
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(default-frame-alist (quote ((height . 70) (width . 120))))
 '(desktop-save-mode t)
 '(global-hl-line-mode 1)
 '(global-visual-line-mode t)
 '(line-move-ignore-invisible t)
 '(line-move-visual t)
 '(markdown-command "/usr/local/bin/multimarkdown")
 '(markdown-open-command "/Applications/Safari.app/Contents/MacOS/Safari"))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
;(unless (package-installed-p 'use-package)
;       (package-refresh-contents)
;       (package-install 'use-package))



;;; Load use-package
(eval-when-compile
  (require 'use-package))
;(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                 ;; if you use any :bind variant


;;; Load the org file and convert it into el that will add to this init file
(org-babel-load-file (concat user-emacs-directory "config.org"))
