(use-package evil
  :ensure t
  :config
  (require 'evil)
  (evil-mode 1)
  (global-set-key (kbd "C-u") 'evil-scroll-up)
  (modify-syntax-entry ?_ "w")
  (add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w"))))

(use-package evil-nerd-commenter
  :ensure t)
(with-eval-after-load 'evil-maps (define-key evil-motion-state-map (kbd "TAB") nil))

(provide 'g-evil)
