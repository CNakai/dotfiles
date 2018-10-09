(use-package restart-emacs
  :general
  (utility-leader-def
    "C-r" 'restart-emacs))

(use-package magit
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
