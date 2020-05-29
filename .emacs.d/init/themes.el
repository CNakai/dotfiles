(use-package solarized-theme
  :diminish
  :ensure t)

(load-theme 'solarized-dark t)
(custom-set-faces
 '(whitespace-tab ((t (:foreground "#073642")))))
(setq active-theme 'solarized-dark)
(defun toggle-solarized-theme ()
  (interactive)
  (if (eq active-theme 'solarized-light)
      (progn
        (setq active-theme 'solarized-dark)
        (custom-set-faces
         '(whitespace-tab ((t (:foreground "#073642"))))))
    (progn
      (setq active-theme 'solarized-light)
      (custom-set-faces
       '(whitespace-tab ((t (:foreground "#eee8d5")))))))
  (load-theme active-theme))

(utility-leader-def
  "s" 'toggle-solarized-theme)
