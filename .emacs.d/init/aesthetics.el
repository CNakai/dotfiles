(use-package centered-cursor-mode
  :diminish
  :general
  (utility-leader-def
    "c" 'centered-cursor-mode))


(use-package rainbow-delimiters
  :diminish
  :after solarized-theme
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))


(use-package smart-mode-line
  :diminish
  :after solarized-theme
  :config
  (setq sml/theme 'respectful)
  (sml/setup))
