(use-package evil-leader
  :ensure t
  :config
  (require 'evil-leader)
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
    "ff" 'counsel-find-file
    "fj" 'dired-jump
    "fr" 'counsel-recentf
    "<SPC>" 'counsel-M-x
    "pf" 'find-file-in-project
    ;; "jj" 'find-file-in-project-at-point
    "jj" 'evil-avy-goto-char
    "jJ" 'evil-avy-goto-char-2
    "pg" 'counsel-etags-find-tag-at-point
    "sca" 'counsel-ag
    "ss" 'swiper
    "xdw" 'delete-trailing-whitespace
    "cl" 'evilnc-comment-or-uncomment-lines
    "1" 'winum-select-window-1
    "2" 'winum-select-window-2
    "3" 'winum-select-window-3
    "4" 'winum-select-window-4
    "5" 'winum-select-window-5
    "6" 'winum-select-window-6
    "7" 'winum-select-window-7
    "8" 'winum-select-window-8
    "9" 'winum-select-window-9
    ;; configurations for org-mode
    "oit" 'org-insert-structure-template
    "oas" 'org-archive-subtree
    "ods" 'org-download-screenshot
    "orf" 'org-roam-node-file
    "ori" 'org-roam-node-insert
    "oru" 'org-roam-ui-mode))

(provide 'g-evil-leader)
