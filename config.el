
(custom-set-variables
;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(custom-enabled-themes (quote (greymatters)))
 '(default-frame-alist (quote ((height . 70) (width . 120))))
 '(desktop-save-mode t)
 '(global-visual-line-mode t)
 '(markdown-command "/usr/local/bin/multimarkdown")
 '(markdown-open-command "/Applications/Safari.app/Contents/MacOS/Safari")
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)

;(setq mac-command-modifier 'control)
;(setq mac-control-modifier 'command)

;; fontify code in code blocks
(setq org-src-fontify-natively t)

;; path to where plugins are kept
;;(setq plugin-path "~/.emacs.d/lisp/")
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Add path to homebrew packages (that's where ispell installed)
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

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

(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)

;; Ido mode
(require 'ido)
(ido-mode 1)

;; Markdown mode
;; Markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(put 'narrow-to-region 'disabled nil)

;; Org mode
;; fontify code in code blocks
(setq org-src-fontify-natively t)

; Some initial langauges we want org-babel to support
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (ruby . t)
   (sqlite . t)
   (perl . t)
   ))

;; Setting up MobileOrg
;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/Notes/")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/Notes/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
;; Tell Emacs which org files it should push to MobileOrg
(setq org-mobile-files '("~/Dropbox/Notes/"))
;; Set the inbox file where on the fly todos and notes will be captured
(setq org-default-notes-file "~/Dropbox/Notes/inbox.org")

;; Email
; (autoload 'wl "wl" "Wanderlust" t)

;; Evil mode

(use-package evil
;:ensure t  ;I commented this out because it kept downloading it from elpa, where there is an old version
:config 
(evil-mode 1)
)

; Modify keybindings for N state
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "$") 'evil-end-of-visual-line)
(define-key evil-normal-state-map (kbd "0") 'evil-beginning-of-visual-line)

; Modify keybindings for V state
(define-key evil-visual-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-visual-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-visual-state-map (kbd "$") 'evil-end-of-visual-line)
(define-key evil-visual-state-map (kbd "0") 'evil-beginning-of-visual-line)

;;; Disable all themes before loading a new one
(defadvice load-theme (before theme-dont-propagate activate)
 (mapcar #'disable-theme custom-enabled-themes))

;; Deft (this is an nvAlt like plugin)

(use-package deft
;:ensure t
:init
:config
(setq deft-extensions '("org" "txt" "text" "md" "markdown"))
(setq deft-directory "~/Dropbox/Notes")
(setq deft-archive-directory "~/Dropbox/Notes/archive") 
(setq deft-text-mode 'org-mode)
(setq deft-use-filename-as-title t)
(setq deft-recursive t)  ;this will search also within sub-directories
)

(global-set-key [f8] 'deft); open Deft with F8
