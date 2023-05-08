(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "ff" 'counsel-find-file
  "fj" 'dired-jump
  "fr" 'counsel-recentf
  "<SPC>" 'counsel-M-x
  "pf" 'find-file-in-project
  "jj" 'find-file-in-project-at-point
  "pg" 'counsel-etags-find-tag-at-point
  "sca" 'counsel-ag
  "oit" 'org-insert-structure-template
  "oas" 'org-archive-subtree
  "ss" 'swiper
)
(provide 'g-evil-leader)
