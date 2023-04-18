(require 'g-emacs-comm)
(require 'g-dired)
;; g-evil-leader mustbe called before evil so leader-key can work
;; in initial buffers (*scratch*, *Messages*, …).
(require 'g-evil-leader)
(require 'g-evil)
(require 'g-smex)
(require 'g-which-key)
(require 'g-company)
(require 'g-find-file-in-project)
(require 'g-c-mode)
(require 'g-counsel-etags)

(setq initial-scratch-message "Happy hacking and Grey ♥ you!")
(provide 'g-config)
