(use-package general
  :diminish)

(general-define-key
  :states '(normal motion)
  "SPC" nil)

(general-create-definer utility-leader-def
  :states 'normal
  :prefix "SPC")
