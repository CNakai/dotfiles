;; I don't like tags to be justified or tabbed right
(setq org-tags-column 0)

(use-package org-present
  :ensure t
  :config
  (add-hook 'org-present-mode-hook
            (lambda ()
              (org-present-big)
              (org-display-inline-images)
              (org-present-read-only)))
  (add-hook 'org-present-mode-quit-hook
            (lambda ()
              (org-present-small)
              (org-remove-inline-images)
              (org-present-read-write))))

(defun jdp-org-sort ()
  (interactive)
  (save-excursion
    ;; Sort according to the time
    (beginning-of-buffer)
    (org-sort-entries t ?t)
    ;; Sort according to the priority
    (beginning-of-buffer)
    (org-sort-entries t ?p)
    ;; Sort according to the TODO/DONE keywords
    (beginning-of-buffer)
    (org-sort-entries t ?o)
    (org-overview)
    (org-cycle)
    ))

(defun jdp-org-sparse-todo ()
  (interactive)
  (save-excursion
    ;; You can't call org-sparse-tree directly, but by reading
    ;; the source you can figure out what it does..
    (beginning-of-buffer)
    (org-show-todo-tree '(4))))

(setq org-todo-keywords
      '((sequence "next(n)" "inbox(i)" "waiting(w)" "done(d)" "later(l)" "note(t)" "meeting(m)")))

(setq org-todo-keyword-faces
      '(("inbox" . (:foreground "GoldenRod" :weight bold))
        ("next" . (:foreground "IndianRed1" :weight bold))   
        ("waiting" . (:foreground "OrangeRed" :weight bold))
        ("done" . (:foreground "coral" :weight bold)) 
        ("later" . (:foreground "LimeGreen" :weight bold))
        ("note" . (:foreground "LimeGreen" :weight bold))
        ("meeting" . (:foreground "LimeGreen" :weight bold))))
