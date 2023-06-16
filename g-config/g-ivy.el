(use-package amx
  :ensure t
  :config (amx-mode 1))

(use-package ivy
  :ensure t
  :config (ivy-mode 1))

(use-package counsel-etags
  :ensure t)

(use-package flx
  :ensure t)

(use-package avy
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-initial-inputs-alist nil))

;; fuzzy match can work when the following configuration is removed.
;; (setq ivy-re-builders-alist
;;       '((ivy-switch-buffer . ivy--regex-plus)
;;         (t . ivy--regex-fuzzy)))

(global-set-key (kbd "M-x") 'counsel-M-x)
(provide 'g-ivy)

