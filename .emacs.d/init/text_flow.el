;; Create a variable for our preferred tab width
(setq custom-tab-width 2)

;; Language-Specific Tweaks
(setq-default python-indent-offset custom-tab-width)
(setq-default js-indent-level custom-tab-width)

;; Make the backspace properly erase the tab instead of
;; removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)


;; Whitespace Display
(global-whitespace-mode)
(setq whitespace-style '(face tabs tab-mark trailing))
(setq whitespace-display-mappings
      '((tab-mark 9 [124 9] [92 9])))


(use-package aggressive-indent
  :diminish
  :config
  (global-aggressive-indent-mode 1)
  (add-hook 'artist-mode-hook (lambda ()
                                (aggressive-indent-mode 'toggle))))


(use-package smart-tabs-mode
  :disabled t
  :diminish
  :ensure t
  :config
  (smart-tabs-insinuate 'c 'c++ 'java 'javascript 'python 'ruby))


;; Fill Column
(setq-default fill-column 80)
(use-package fill-column-indicator
  :ensure t
  :config
  (define-globalized-minor-mode global-fci-mode fci-mode (lambda ()
                                                           (fci-mode 1)))
  (global-fci-mode 1))

;; Maybe useless?

;; When adding comments with auto-fill-mode, don't rewrap code.
;; (setq comment-auto-fill-only-comments t)

;; ;; Two callable functions for enabling/disabling tabs in Emacs
;; (defun disable-tabs () (setq indent-tabs-mode nil))
;; (defun enable-tabs  ()
;;   (local-set-key (kbd "TAB") 'tab-to-tab-stop)
;;   (setq indent-tabs-mode t)
;;   (setq tab-width custom-tab-width))

;; ;; Hooks to Enable Tabs
;; (add-hook 'prog-mode-hook 'enable-tabs)
;; ;; Hooks to Disable Tabs
;; (add-hook 'lisp-mode-hook 'disable-tabs)
;; (add-hook 'emacs-lisp-mode-hook 'disable-tabs)

;; Making electric-indent behave sanely
;; (setq-default electric-indent-inhibit t)

