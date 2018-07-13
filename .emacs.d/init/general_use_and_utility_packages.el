(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (auto-package-update-maybe))

(use-package diminish)

(use-package restart-emacs)

(use-package general
  :diminish)

(general-create-definer utility-leader-def
  :states 'normal
  :prefix "SPC")

(utility-leader-def
 "1" 'delete-other-windows
 "d" 'kill-this-buffer
 "o" 'other-window
 "w" 'save-buffer
 "C-r" 'restart-emacs
 "R" (lambda () (interactive) (revert-buffer :ignore-auto :noconfirm)))


(use-package magit
  :diminish
  :general
  (utility-leader-def
    "g" 'magit-status))
