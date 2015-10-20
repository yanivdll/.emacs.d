;; fontify code in code blocks
(setq org-src-fontify-natively t)

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


