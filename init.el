;; set this so I can overide the preistalled packages
;; and override them with different versions
;; for now, org is different than the preinstalled version
; (package-initialize nil)

;;; Path to the lisp directory, where user custom packages reside.
;;; Must have it here in order for the use-package to load
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Override the packages with the git version of Org
(add-to-list 'load-path "~/.emacs.d/lisp/org-mode/lisp")

;; Load the rest of the packages
; (package-initialize nil)

; (require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  ;;'(custom-enabled-themes (quote (greymatters)))
  '(custom-safe-themes t)
  '(custom-theme-directory "~/.emacs.d/themes/")
  '(default-frame-alist (quote ((height . 70) (width . 120))))
  '(desktop-save-mode t)
  '(global-visual-line-mode t)
  '(global-hl-line-mode 1) ; turn on highlighting current line
  '(markdown-command "/usr/local/bin/multimarkdown")
  '(markdown-open-command "/Applications/Safari.app/Contents/MacOS/Safari")
  '(package-archives
    (quote
     (("gnu" . "http://elpa.gnu.org/packages/")
      ("marmalade" . "http://marmalade-repo.org/packages/")
      ("melpa" . "http://melpa.org/packages/")))))

; (package-initialize)

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


;;; Load el-get to path, otherwise use-package won't work
(add-to-list 'load-path "~/.emacs.d/el-get/el-get/")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;;; Load use-package
(eval-when-compile
  (require 'use-package))
;(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                 ;; if you use any :bind variant



;;; Load the org file and convert it into el that will add to this init file
(org-babel-load-file (concat user-emacs-directory "config.org"))

