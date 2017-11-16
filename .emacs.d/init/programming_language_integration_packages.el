(use-package alchemist
  :ensure t)

(use-package php-mode
  :ensure t)

(use-package web-mode
  :ensure t
  :config
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-indent-style 4))
