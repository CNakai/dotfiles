(use-package solarized-theme
  :diminish
  :ensure t)

(load-theme 'solarized-light t)
(setq active-theme 'solarized-light)
(defun toggle-solarized-theme ()
  (interactive)
  (if (eq active-theme 'solarized-light)
      (setq active-theme 'solarized-dark)
    (setq active-theme 'solarized-light))
  (load-theme active-theme))

(utility-leader-def
  "s" 'toggle-solarized-theme)

(use-package fill-column-indicator)

(use-package golden-ratio
  :diminish
  :config
  (golden-ratio-mode))

(use-package centered-cursor-mode
  :diminish
  :general
  (utility-leader-def
   "c" 'centered-cursor-mode))

(use-package aggressive-indent
  :diminish
  :config
  (global-aggressive-indent-mode 1))

(use-package rainbow-delimiters
  :diminish
  :after solarized-theme)

(use-package smart-mode-line
  :diminish
  :after solarized-theme
  :config
  (sml/setup))
