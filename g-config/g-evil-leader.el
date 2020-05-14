(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "ff" 'find-file
  "fj" 'dired-jump
  "fr" 'recentf-open-files
  "<SPC>" 'smex
)
(provide 'g-evil-leader)
