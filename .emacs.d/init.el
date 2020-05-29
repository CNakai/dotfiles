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

;; Customization based configuration
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "5dbdb4a71a0e834318ae868143bb4329be492dd04bdf8b398fb103ba1b8c681a" "a68670dce845d18af9ec87716b4d4c2ea071271eccc80242be4d232c58b3cca2" "d91ef4e714f05fff2070da7ca452980999f5361209e679ee988e3c432df24347" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(fill-column 79)
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
    (evil-magit magit lorem-ipsum evil-matchit evil-args evil-goggles stopwatch org-bullets smart-mode-line rainbow-delimiters aggressive-indent org-present typescript-mode flycheck default-text-scale haskell-emacs haskell-mode elixir-mode linum-relative macrostep slime ess)))
 '(python-indent-offset 4 t)
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
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 130 :width normal :foundry "SRC" :family "Hack"))))
 '(evil-goggles-change-face ((t (:inherit diff-removed))))
 '(evil-goggles-delete-face ((t (:inherit diff-removed))))
 '(evil-goggles-paste-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-add-face ((t (:inherit diff-added))))
 '(evil-goggles-undo-redo-change-face ((t (:inherit diff-changed))))
 '(evil-goggles-undo-redo-remove-face ((t (:inherit diff-removed))))
 '(evil-goggles-yank-face ((t (:inherit diff-changed))))
 '(fringe ((t (:background "#002b36"))))
 '(whitespace-tab ((t (:foreground "#636363")))))

(load-file ".emacs.d/init/load_all.el")

(setq evil-digraphs-table-user '(((?^ ?\x0029) . ?͡) ;; )
                                 ((?^ ?') . ?ˈ)
                                 ((?^ ?,) . ?ˌ)
                                 ((?^ ?:) . ?ː)
                                 ((?q ?n) . ?̃)
                                 ((?q ?c) . ?̰)
                                 ((?q ?b) . ?̤)
                                 ((?^ ?h) . ?ʰ)
                                 ((?^ ?n) . ?ⁿ)
                                 ((?^ ?j) . ?ʲ)
                                 ((?^ ?w) . ?ʷ)
                                 ((?^ ?v) . ?ˠ)
                                 ((?^ ?p) . ?ˤ)
                                 ((?^ ?l) . ?ˡ)
                                 ((?^ ?a) . ?̺)
                                 ((?^ ?d) . ?̪)
                                 ((?^ ??) . ?ʼ)
                                 ((?b ??) . ?ɓ)
                                 ((?d ??) . ?ɗ)
                                 ((?r ??) . ?ᶑ)
                                 ((?c ??) . ?ʄ)
                                 ((?k ??) . ?ɠ)
                                 ((?q ??) . ?ʛ)
                                 ))

