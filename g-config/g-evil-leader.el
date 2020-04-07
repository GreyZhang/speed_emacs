(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "ff" 'find-file
  "fj" 'dired-jump
)
(provide 'g-evil-leader)
