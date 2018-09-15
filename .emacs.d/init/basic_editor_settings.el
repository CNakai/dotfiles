; Remove the obnoxious icon bar
(tool-bar-mode -1)
;; Remove the scroll bar as well
(toggle-scroll-bar -1)
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
;; Turn on column-numbers in the status bar
(column-number-mode)

(setq js-indent-level 2)


;; When adding comments with auto-fill-mode, don't rewrap code.
(setq comment-auto-fill-only-comments t)

;; Only ask y or n questions
(fset 'yes-or-no-p 'y-or-n-p)

;; Temporary files setup
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))    ; don't litter my fs tree
(setq delete-old-versions t)
(setq version-control t)

;; Let me downcase things
(put 'downcase-region 'disabled nil)
