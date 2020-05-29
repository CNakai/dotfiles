;; Orphaned Keyboard Shortcuts
(utility-leader-def
  "1" 'delete-other-windows
  "2" 'split-window-below
  "3" 'split-window-right
  "d" 'kill-this-buffer
  "o" 'other-window
  "w" 'save-buffer
  "R" (lambda () (interactive) (revert-buffer :ignore-auto :noconfirm))
  "C-r" 'auto-revert-mode)

(use-package evil
  :diminish
  :config
  (setq evil-want-Y-yank-to-eol t
        evil-magic 'very-magic
        evil-search-module 'evil-search)
  :general
  (general-define-key
   :states 'normal
   "j" 'evil-next-visual-line
   "k" 'evil-previous-visual-line
   "M-j" 'evil-scroll-down
   "M-k" 'evil-scroll-up)
  (utility-leader-def
    :states 'motion
    "h" 'evil-beginning-of-line
    "l" 'evil-end-of-line)
  (utility-leader-def
    "b" 'evil-switch-to-windows-last-buffer))

(use-package evil-goggles
  :diminish
  :config
  (setq evil-goggles-pulse t
        evil-goggles-duration 0.100)
  (evil-goggles-mode)
  (evil-goggles-use-diff-faces))

(use-package evil-escape
  :diminish
  :after evil
  :config
  (setq-default evil-escape-key-sequence "jk")
  (setq evil-escape-unordered-key-sequence t)
  (setq evil-escape-delay 0.2)
  (evil-escape-mode t))

(use-package evil-numbers
  :diminish
  :after evil
  :general
  (utility-leader-def
    "=" 'evil-numbers/inc-at-pt
    "-" 'evil-numbers/dec-at-pt))

(use-package evil-visualstar
  :diminish
  :after evil
  :config
  (global-evil-visualstar-mode))

(use-package evil-commentary
  :diminish
  :after evil
  :config
  (evil-commentary-mode))

(use-package evil-surround
  :diminish
  :after evil
  :config
  (global-evil-surround-mode t))

(use-package evil-exchange
  :diminish
  :after evil
  :config
  (utility-leader-def
    "x" 'evil-exchange
    "X" 'evil-exchange-cancel)
  (evil-exchange-install))

(use-package evil-args
  :diminish
  :after evil
  :config
  (define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
  (define-key evil-outer-text-objects-map "a" 'evil-outer-arg))

(use-package evil-matchit
  :diminish
  :after evil
  :config
  (global-evil-matchit-mode t))

(use-package evil-magit
  :after (evil magit)
  :init
  (add-hook 'magit-mode-hook 'evil-local-mode))

(evil-mode t)
