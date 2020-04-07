(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; use this package provides various extra features for Dired mode
(require 'dired-x)
(setq dired-dwin-target 1)


(provide 'g-dired)
