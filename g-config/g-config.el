(require 'g-emacs-comm)
;; g-evil-leader mustbe called before evil so leader-key can work
;; in initial buffers (*scratch*, *Messages*, …).
(require 'g-evil-leader)
(require 'g-evil)
(require 'g-smex)

(setq initial-scratch-message "Happy hacking and Grey ♥ you!")
(provide 'g-config)
