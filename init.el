; set this so I can overide the preistalled packages
;; and override them with different versions
;; for now, org is different than the preinstalled version
;;(package-initialize nil)

;; Standard package setup
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Initialize packages (Emacs 27+ does this automatically, but this ensures it's ready)
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; Use built-in use-package (Emacs 29+) or install it if missing
(if (< emacs-major-version 29)
    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
  (require 'use-package))

;; load elpy
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;; Load support for :bind and :diminish
(require 'bind-key)
(setq use-package-always-ensure t)

;;; Path to the lisp directory, where user custom packages reside.
;;; Must have it here in order for the use-package to load
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Override the packages with the git version of Org
;; (add-to-list 'load-path "~/.emacs.d/lisp/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp/org-reveal/")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/lisp/markdown-mode")
(setq load-path (cons "~/.emacs.d/lisp/org2blog/" load-path))



;; Don't litter my init file
(setq custom-file "~/.emacs.d/local/custom-set.el")
(load custom-file 'noerror)

(require 'package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; (setq-default fill-column 120)
 (scroll-bar-mode -1)
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
     ("melpa" . "https://melpa.org/packages/")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; Load the org file and convert it into el that will add to this init file
(org-babel-load-file (concat user-emacs-directory "config.org"))
;;; init.el --- Cleaned Startup File (2026)

;; 1. Setup Custom File to keep init.el clean
(setq custom-file (expand-file-name "local/custom-set.el" user-emacs-directory))
(unless (file-exists-p custom-file)
  (unless (file-exists-p (file-name-directory custom-file))
    (make-directory (file-name-directory custom-file) t))
  (with-temp-buffer (write-file custom-file)))
(load custom-file 'noerror)

;; 2. Package System Initialization
(require 'package)
(add-to-list 'package-archives '("melpa" . "melpa.org") t)

;; In Emacs 29.1+, use-package is built-in. 
;; We set this to prevent the "setting-constant nil" bug
(setq use-package-enable-imenu-support t)

(if (< emacs-major-version 29)
    (unless (package-installed-p 'use-package)
      (package-refresh-contents)
      (package-install 'use-package))
  (require 'use-package))

(require 'bind-key)
(setq use-package-always-ensure t)

;; 3. Load Paths (User Lisp)
(let ((default-directory (expand-file-name "lisp/" user-emacs-directory)))
  (when (file-directory-p default-directory)
    (normal-top-level-add-subdirs-to-load-path)))

;; Manual paths for specific git versions
(add-to-list 'load-path (expand-file-name "lisp/org-reveal/" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/org2blog/" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/markdown-mode/" user-emacs-directory))

;; 4. Essential Package Load (Load Elpy here so config.el sees it)
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;; 5. Tangle and Load config.org
;; This converts your config.org into config.el and loads it
(if (file-exists-p (expand-file-name "config.org" user-emacs-directory))
    (org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
  (message "Warning: config.org not found in .emacs.d"))

;;; init.el ends here
