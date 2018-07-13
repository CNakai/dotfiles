(use-package solarized-theme
  :diminish
  :ensure t
  :config
  (load-theme 'solarized-dark t))

(use-package golden-ratio
  :diminish
  :ensure t
  :config
  (golden-ratio-mode))

(use-package centered-cursor-mode
  :ensure t
  :general
  (utility-leader-def
   "c" 'centered-cursor-mode))
