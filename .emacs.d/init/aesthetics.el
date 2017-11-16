(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-light t))

(use-package golden-ratio
  :ensure t
  :config
  (golden-ratio-mode))

(use-package nlinum-relative
  :ensure t
  :config
  (setq nlinum-relative-redisplay-delay 0)
  (setq nlinum-relative-current-symbol "")
  (setq nlinum-relative-offset 0)
  (global-nlinum-relative-mode))

(use-package centered-cursor-mode
  :ensure t
  :config
  (global-centered-cursor-mode))
