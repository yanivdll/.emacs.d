((apel status "installed" recipe
       (:name apel :website "http://www.kanji.zinbun.kyoto-u.ac.jp/~tomo/elisp/APEL/" :description "APEL (A Portable Emacs Library) is a library to support to write portable Emacs Lisp programs." :type github :pkgname "wanderlust/apel" :build
              (mapcar
               (lambda
                 (target)
                 (list el-get-emacs
                       (split-string "-batch -q -no-site-file -l APEL-MK -f")
                       target "prefix" "site-lisp" "site-lisp"))
               '("compile-apel" "install-apel"))
              :load-path
              ("site-lisp/apel" "site-lisp/emu")))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (define-word status "installed" recipe
   (:name define-word :website "https://github.com/abo-abo/define-word" :description " Display the definition of word at point in Emacs." :type github :pkgname "abo-abo/define-word"))
 (dictionary-app status "installed" recipe
                 (:name dictionary-app :type github :description "Search item to OSX Dictionary.app." :pkgname "renard/dictionary-app"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :features el-get :post-init
                (when
                    (memq 'el-get
                          (bound-and-true-p package-activated-list))
                  (message "Deleting melpa bootstrap el-get")
                  (unless package--initialized
                    (package-initialize t))
                  (when
                      (package-installed-p 'el-get)
                    (let
                        ((feats
                          (delete-dups
                           (el-get-package-features
                            (el-get-elpa-package-directory 'el-get)))))
                      (el-get-elpa-delete-package 'el-get)
                      (dolist
                          (feat feats)
                        (unload-feature feat t))))
                  (require 'el-get))))
 (emacs-async status "installed" recipe
              (:name emacs-async :description "Simple library for asynchronous processing in Emacs" :type github :pkgname "jwiegley/emacs-async"))
 (flim status "installed" recipe
       (:name flim :description "A library to provide basic features about message representation or encoding" :depends apel :type github :branch "flim-1_14-wl" :pkgname "wanderlust/flim" :build
              (mapcar
               (lambda
                 (target)
                 (list el-get-emacs
                       (mapcar
                        (lambda
                          (pkg)
                          (mapcar
                           (lambda
                             (d)
                             `("-L" ,d))
                           (el-get-load-path pkg)))
                        '("apel"))
                       (split-string "-batch -q -no-site-file -l FLIM-MK -f")
                       target "prefix" "site-lisp" "site-lisp"))
               '("compile-flim" "install-flim"))
              :load-path
              ("site-lisp/flim")))
 (helm status "installed" recipe
       (:name helm :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :autoloads "helm-autoloads" :build
              (("make"))
              :build/darwin
              `(("make" ,(format "EMACS_COMMAND=%s" el-get-emacs)))
              :build/windows-nt
              (let
                  ((generated-autoload-file
                    (expand-file-name "helm-autoloads.el"))
                   \
                   (backup-inhibited t))
              (update-directory-autoloads default-directory)
              nil)))
(magit status "installed" recipe
(:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :branch "master" :minimum-emacs-version "24.4" :depends
(dash)
:provide
(with-editor)
:info "Documentation" :load-path "lisp/" :compile "lisp/" :build
`(("make" ,(format "EMACSBIN=%s" el-get-emacs)
"docs")
("touch" "lisp/magit-autoloads.el"))
:build/berkeley-unix
`(("gmake" ,(format "EMACSBIN=%s" el-get-emacs)
"docs")
("touch" "lisp/magit-autoloads.el"))
:build/windows-nt
(with-temp-file "lisp/magit-autoloads.el" nil)))
(merriam status "installed" recipe
(:name merriam :auto-generated t :type emacswiki :description "Look up a word in WWW Merriam-Webster dictionary" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/merriam.el"))
(semi status "installed" recipe
(:name semi :description "SEMI is a library to provide MIME feature for GNU Emacs." :depends flim :type github :branch "semi-1_14-wl" :pkgname "wanderlust/semi" :build
(mapcar
(lambda
(target)
(list el-get-emacs
(mapcar
(lambda
(pkg)
(mapcar
(lambda
(d)
`("-L" ,d))
(el-get-load-path pkg)))
'("apel" "flim"))
(split-string "-batch -q -no-site-file -l SEMI-MK -f")
target "prefix" "site-lisp" "site-lisp"))
'("compile-semi" "install-semi"))
:load-path
("site-lisp/semi/")))
(use-package status "installed" recipe
(:name use-package :type github :description "A use-package declaration for simplifying your .emacs" :pkgname "jwiegley/use-package")))
