(use-package evil
  :ensure t)

(use-package evil-leader
    :init
    :ensure t
    :config
    (evil-leader/set-leader "<SPC>")
    (evil-leader/set-key
      "j" 'evil-next-buffer
      "k" 'evil-prev-buffer
      "h" 'evil-beginning-of-line
      "l" 'evil-end-of-line
      "d" 'kill-this-buffer)
    (global-evil-leader-mode))

(use-package evil-commentary
  :ensure t
  :config
  (evil-commentary-mode))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-exchange
  :ensure t
  :config
  (evil-exchange-install))

(use-package evil-escape
  :ensure t)

(use-package evil-matchit
  :ensure t)

(evil-mode)
