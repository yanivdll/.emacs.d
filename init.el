;; set this so I can overide the preistalled packages
;; and override them with different versions
;; for now, org is different than the preinstalled version
(package-initialize nil)

;;; Path to the lisp directory, where user custom packages reside.
;;; Must have it here in order for the use-package to load
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Override the packages with the git version of Org
(add-to-list 'load-path "~/.emacs.d/lisp/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp/org-reveal/")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/lisp/markdown-mode")
(setq load-path (cons "~/.emacs.d/lisp/org2blog/" load-path))


(require 'org2blog-autoloads)
;; Load the rest of the packages
 (package-initialize nil)

(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes t)
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(default-frame-alist (quote ((height . 80) (width . 70) (tool-bar-lines . 0))))
 '(global-hl-line-mode 1)
 '(global-visual-line-mode t)
 '(markdown-command "/usr/local/bin/multimarkdown")
 '(markdown-open-command "/Applications/Safari.app/Contents/MacOS/Safari")
 '(mode-require-final-newline nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (helm workgroups2 wordsmith-mode web-mode w3 use-package synosaurus synonymous sublimity solarized-theme smooth-scrolling python-environment projectile php-mode ox-reveal org2blog multiple-cursors magit langtool iedit htmlize expand-region epc emmet-mode elpy draft-mode deft define-word cl-lib-highlight centered-window-mode centered-cursor-mode calfw-gcal calfw auto-complete ace-jump-mode)))
 '(require-final-newline nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode 1))

(package-initialize)

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

