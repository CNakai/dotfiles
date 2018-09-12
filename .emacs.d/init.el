;; Package management setup
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)
(setq use-package-compute-statistics t)

(load "~/.emacs.d/init/load_all.el")


;; Customization based configuration
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (solarized-light solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(evil-digraphs-table-user
   (quote
    (((94 58)
      . 720)
     ((94 96)
      . 712)
     ((94 44)
      . 716)
     ((94 39)
      . 700)
     ((94 100)
      . 810)
     ((94 63)
      . 740)
     ((94 118)
      . 736)
     ((94 119)
      . 695)
     ((94 104)
      . 688)
     ((94 119)
      . 32)
     ((94 106)
      . 690)
     ((94 40)
      . 865)
     ((94 41)
      . 860)
     ((112 105)
      . 595)
     ((116 105)
      . 599)
     ((99 105)
      . 644)
     ((107 105)
      . 608)
     ((113 105)
      . 667)
     ((122 104)
      . 658)
     ((115 104)
      . 643)
     ((107 97)
      . 624)
     ((101 108)
      . 603)
     ((117 117)
      . 623)
     ((111 108)
      . 596)
     ((97 98)
      . 593)
     ((97 114)
      . 594)
     ((101 108)
      . 603)
     ((99 108)
      . 654)
     ((99 102)
      . 231)
     ((99 110)
      . 626)
     ((99 118)
      . 607)
     ((108 122)
      . 622)
     ((108 115)
      . 620)
     ((100 102)
      . 240)
     ((116 102)
      . 952)
     ((98 114)
      . 665)
     ((98 102)
      . 946)
     ((112 102)
      . 632)
     ((94 40)
      . 865)
     ((94 41)
      . 32)
     ((94 104)
      . 688)
     ((63 115)
      . 660)
     ((97 126)
      . 227)
     ((101 126)
      . 7869)
     ((105 126)
      . 297)
     ((111 126)
      . 245)
     ((117 126)
      . 361))) nil (evil-digraphs))
 '(indent-tabs-mode nil)
 '(menu-bar-mode nil)
 '(org-latex-classes
   (quote
    (("letter" "\\documentclass[12pt]{letter}"
      ("" . ""))
     ("article" "\\documentclass[11pt]{article}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("report" "\\documentclass[11pt]{report}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("book" "\\documentclass[11pt]{book}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (typescript-mode flycheck default-text-scale haskell-emacs haskell-mode alchemist elixir-mode linum-relative evil-lion evil-leader evil-exchange evil-commentary macrostep slime evil-tutor evil-surround evil-matchit evil-escape ess)))
 '(safe-local-variable-values
   (quote
    ((eval face-remap-add-relative
           (quote default)
           (quote
            (:family "Everson Mono" :height 140)))
     (eval face-remap-add-relative
           (quote default)
           (quote
            (:family "Everson" :weight bold :height 140))))))
 '(show-paren-mode t)
 '(solarized-high-contrast-mode-line t)
 '(solarized-use-more-italic t)
 '(solarized-use-variable-pitch nil)
 '(standard-indent 2)
 '(tool-bar-mode nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 130 :width normal :foundry "SRC" :family "Hack")))))

