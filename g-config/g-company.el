;; It would be difficult to disable in a certain major mode if use global-company-mode
;; (global-company-mode 1)
(add-hook 'c-mode-hook 'company-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
;; configurations for org-mode
(add-hook 'org-mode-hook 'company-mode)

(provide 'g-company)
