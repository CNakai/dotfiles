(use-package restart-emacs
  :general
  (utility-leader-def
    "C-r" 'restart-emacs))

(use-package magit
  :diminish
  :general
  (utility-leader-def
    "g" 'magit-status))

(use-package fill-column-indicator
  :ensure t)
