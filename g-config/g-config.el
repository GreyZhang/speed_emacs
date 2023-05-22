(require 'g-emacs-comm)
(require 'g-dired)
(require 'use-package)
;; g-evil-leader mustbe called before evil so leader-key can work
;; in initial buffers (*scratch*, *Messages*, …).
(require 'g-evil-leader)
(require 'g-evil)
(require 'g-ivy)
(require 'g-which-key)
(require 'g-company)
(require 'g-find-file-in-project)
(require 'g-c-mode)
(require 'g-org)
(require 'g-hungry-delete)

(setq initial-scratch-message "Happy hacking and emacs ♥ you!")
(provide 'g-config)
