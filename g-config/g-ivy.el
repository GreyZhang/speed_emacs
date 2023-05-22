(use-package amx
  :ensure t
  :config (amx-mode 1))

(use-package ivy
  :ensure t
  :config (ivy-mode 1))

(use-package counsel-etags
  :ensure t)

(use-package avy
  :ensure t
  :config (ivy-mode 1))

(global-set-key (kbd "M-x") 'counsel-M-x)
(provide 'g-ivy)

