(use-package restart-emacs
  :general
  (utility-leader-def
    "!" 'restart-emacs))

(use-package magit
  :ensure t
  :diminish
  :general
  (utility-leader-def
    "g" 'magit-status))

(use-package lorem-ipsum
  :diminish
  :config
  (lorem-ipsum-use-default-bindings))

(use-package speed-type
  :diminish)

(use-package xkcd
  :diminish)

(use-package fireplace
  :diminish)
