(require 'smex) ; Not needed if you use package.el

;; Can be omitted. This might cause a (minimal) delay
;; when Smex is auto-initialized on its first run.
;; (smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'g-smex)
