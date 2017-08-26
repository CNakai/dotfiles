;; Package management setup
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(load "~/.emacs.d/init/load_all.el")

;; Solarized setup
(add-to-list 'custom-theme-load-path "~/.emacs-color-theme-solarized")

;; Customization based configuration
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (solarized)))
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(evil-digraphs-table-user
   (quote
    (((122 104)
      . 658)
     ((115 104)
      . 643)
     ((107 97)
      . 624)
     ((111 108)
      . 596)
     ((101 108)
      . 603)
     ((99 108)
      . 654)
     ((99 102)
      . 231)
     ((99 110)
      . 626)
     ((99 118)
      . 607)
     ((108 122)
      . 622)
     ((108 115)
      . 620)
     ((100 102)
      . 240)
     ((116 102)
      . 952)
     ((98 114)
      . 665)
     ((98 102)
      . 946)
     ((112 102)
      . 632)
     ((94 104)
      . 688)
     ((63 115)
      . 660))) nil (evil-digraphs))
 '(evil-escape-delay 0.2)
 '(evil-escape-key-sequence "jk")
 '(evil-escape-mode t)
 '(evil-escape-unordered-key-sequence t)
 '(evil-magic (quote very-magic))
 '(fill-column 110)
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (alchemist elixir-mode linum-relative evil-lion evil-leader evil-exchange evil-commentary macrostep slime evil-tutor evil-surround evil-matchit evil-escape ess)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Everson Mono" :foundry "EVER" :slant normal :weight bold :height 151 :width normal)))))

;; Temporary files setup
(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

;; Slime setup
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; Add opam emacs directory to the load-path
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
;; Load merlin-mode
(require 'merlin)
;; Start merlin on ocaml files
(add-hook 'tuareg-mode-hook 'merlin-mode t)
(add-hook 'caml-mode-hook 'merlin-mode t)
;; Enable auto-complete
(setq merlin-use-auto-complete-mode 'easy)
;; Use opam switch to lookup ocamlmerlin binary
(setq merlin-command 'opam)

