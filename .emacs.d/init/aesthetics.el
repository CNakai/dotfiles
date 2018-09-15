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
