(require 'g-emacs-comm)
(require 'g-dired)
;; g-evil-leader mustbe called before evil so leader-key can work
;; in initial buffers (*scratch*, *Messages*, …).
(require 'g-evil-leader)
(require 'g-evil)
(require 'g-smex)
(require 'g-autopair)
(require 'g-which-key)
(require 'g-company)
(require 'g-find-file-in-project)
(require 'g-c-mode)

(setq initial-scratch-message "Happy hacking and Grey ♥ you!")
(provide 'g-config)
