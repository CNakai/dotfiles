(use-package nlinum-relative
  :ensure t)

(use-package restart-emacs
  :ensure t)

(use-package fill-column-indicator
  :ensure t)

(use-package org-present
  :ensure t
  :config (progn
	    (add-hook 'org-present-mode-hook
		      (lambda ()
			(org-present-big)
			(org-display-inline-images)
			(org-present-hide-cursor)
			(org-present-read-only)))
	    (add-hook 'org-present-mode-quit-hook
		      (lambda ()
			(org-present-small)
			(org-remove-inline-images)
			(org-present-show-cursor)
			(org-present-read-write)))))
