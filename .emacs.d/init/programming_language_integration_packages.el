;;; package --- Summary
;;; Commentary:

;;; Code:
(use-package flycheck
  :disabled t
  :config
  (global-flycheck-mode))

(use-package alchemist
  :ensure t)

(use-package php-mode
  :ensure t)

(use-package web-mode
  :ensure t
  :config
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-indent-style 4))


;; Slime setup
;; (setq inferior-lisp-program "/usr/local/bin/sbcl")
;; (setq slime-contribs '(slime-fancy))


;; Uncomment in case of CAMLs

;; ;; Add opam emacs directory to the load-path
;; (setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
;; (add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
;; ;; Load merlin-mode
;; (require 'merlin)
;; ;; Start merlin on ocaml files
;; (add-hook 'tuareg-mode-hook 'merlin-mode t)
;; (add-hook 'caml-mode-hook 'merlin-mode t)
;; ;; Enable auto-complete
;; (setq merlin-use-auto-complete-mode 'easy)
;; ;; Use opam switch to lookup ocamlmerlin binary
;; (setq merlin-command 'opam)
