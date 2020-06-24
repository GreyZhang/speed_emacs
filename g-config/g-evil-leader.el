(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "ff" 'find-file
  "fj" 'dired-jump
  "fr" 'recentf-open-files
  "<SPC>" 'smex
  "pf" 'find-file-in-project
  "jj" 'find-file-in-project-at-point
  "pg" 'counsel-etags-find-tag-at-point
)
(provide 'g-evil-leader)
