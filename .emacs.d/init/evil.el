;; Orphaned Keyboard Shortcuts
(utility-leader-def
  "1" 'delete-other-windows
  "d" 'kill-this-buffer
  "o" 'other-window
  "w" 'save-buffer
  "R" (lambda () (interactive) (revert-buffer :ignore-auto :noconfirm)))

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
    "b" 'evil-next-buffer
    "B" 'evil-prev-buffer))

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
