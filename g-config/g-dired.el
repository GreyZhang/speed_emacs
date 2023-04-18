(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; use this package provides various extra features for Dired mode
(require 'dired-x)
(setq dired-dwin-target 1)
(global-set-key (kbd "<f5>") 'dired-jump)
(add-hook 'dired-mode-hook 'auto-revert-mode)

(provide 'g-dired)
