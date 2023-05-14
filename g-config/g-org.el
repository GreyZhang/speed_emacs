(use-package org-bullets
:ensure t
:config
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(global-set-key (kbd "<f2>") 'org-pomodoro)
(setq org-startup-truncated nil)

;; configurations for babel
;; only use when you want to use code evaluation.
;; (org-babel-do-load-languages
;;       'org-babel-load-languages
;;       '((python . t)
;; 	(emacs-lisp . t)
;; 	(perl . t)
;; 	(C . t)
;; 	(scheme . t)))
(provide 'g-org)
