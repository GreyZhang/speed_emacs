(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader ",")

(evil-leader/set-key
  "ff" 'find-file
)
(provide 'g-evil-leader)
