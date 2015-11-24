
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
     ("marmalade" . "http://marmalade-repo.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)

;(setq mac-command-modifier 'control)
;(setq mac-control-modifier 'command)
;(setq mac-caps-modifiers 'esc)

;; fontify code in code blocks
(setq org-src-fontify-natively t)

;; path to where plugins are kept
;;(setq plugin-path "~/.emacs.d/lisp/")
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Add path to homebrew packages (that's where ispell installed)
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(defun vi-open-line-above ()
  "Insert a newline above the current line and put point at beginning."
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(defun vi-open-line-below ()
  "Insert a newline below the current line and put point at beginning."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(defun vi-open-line (&optional abovep)
  "Insert a newline below the current line and put point at beginning.
With a prefix argument, insert a newline above the current line."
  (interactive "P")
  (if abovep
      (vi-open-line-above)
    (vi-open-line-below)))

(define-key global-map [f7] 'vi-open-line)

(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))

(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)

(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

(global-set-key (kbd "s-/") 'comment-or-uncomment-region-or-line)

(defun transpose-buffers (arg)
  "Transpose the buffers shown in two windows."
  (interactive "p")
  (let ((selector (if (>= arg 0) 'next-window 'previous-window)))
    (while (/= arg 0)
      (let ((this-win (window-buffer))
            (next-win (window-buffer (funcall selector))))
        (set-window-buffer (selected-window) next-win)
        (set-window-buffer (funcall selector) this-win)
        (select-window (funcall selector)))
      (setq arg (if (plusp arg) (1- arg) (1+ arg))))))

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
(setq deft-use-filter-string-for-filename t)
;(setq deft-recursive t)  ;this will search also within sub-directories
)

(global-set-key [f8] 'deft); open Deft with F8

(autoload 'dired-jump "dired-x"
  "Jump to Dired buffer corresponding to current buffer." t)

(autoload 'dired-jump-other-window "dired-x"
  "Like \\[dired-jump] (dired-jump) but in other window." t)

(define-key global-map "\C-x\C-j" 'dired-jump)
(define-key global-map "\C-x4\C-j" 'dired-jump-other-window)

(use-package htmlize
:ensure t)

;(use-package undo-tree
;  :defer t
;  :ensure t
;  :diminish undo-tree-mode
;  :idle
;  (progn
;    (global-undo-tree-mode)
;    (setq undo-tree-visualizer-timestamps t)
;    (setq undo-tree-visualizer-diff t)))

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
   (js . t)
   (python . t)
   (ruby . t)
   (sqlite . t)
   (perl . t)
   ))

;; This package seemed to be required in order to get syntax highlighting when 
;; publishing to pelican. No one knows why...
;(use-package color-theme-github
;:ensure t)

;(require 'ox-publish)
(use-package ox-publish)

(setq org-publish-project-alist
      '(

  ("org-prodissues"
          ;; Path to your org files.
          :base-directory "~/Dropbox/Notes/posts/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/dev/prodissues/content/"
          :recursive t
          :publishing-function  org-html-publish-to-html
          :headline-levels 4 
          :html-extension "html"
          ;:body-only t ;; Only export section between <body> </body>
    )


    ("org-static-prodissues"
          :base-directory "~/Dropbox/Notes/posts/"
          :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/Dropbox/Notes/"
          :recursive t
          :publishing-function org-publish-attachment)

    ("yan" :components ("org-prodissues"))

))

(setq org-refile-targets '(
   (nil :maxlevel . 2)             ; refile to headings in the current buffer
   (org-agenda-files :maxlevel . 2) ; refile to any of these files
    ))

(require 'org-element)

(defun me/org-file-from-subtree (&optional name)
"Cut the subtree currently being edited and create a new file
from it.

If called with the universal argument, prompt for new filename,
otherwise use the subtree title."
  (interactive "P")
  (org-back-to-heading)
  (let ((filename (cond
                   (current-prefix-arg
                    (expand-file-name
                     (read-file-name "New file name: ")))
                   (t
                    (concat
                     (expand-file-name
                      (org-element-property :title
                                            (org-element-at-point))
                      default-directory)
                     ".org")))))
    (org-cut-subtree)
    (find-file-noselect filename)
    (with-temp-file filename
      (org-mode)
      (yank))))

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

;When in deft this keybinding will open the note in another window
(define-key evil-normal-state-map (kbd "C-o")'deft-open-file-other-window)

;;; Disable all themes before loading a new one
(defadvice load-theme (before theme-dont-propagate activate)
 (mapcar #'disable-theme custom-enabled-themes))

(use-package solarized-theme
:ensure t
:config 
(setq solarized-scale-org-headlines nil))
