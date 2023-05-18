(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package org-download
  :ensure t)
(use-package org-present
  :ensure t
  :config
  (eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)
                 (org-present-hide-cursor)
                 (org-present-read-only)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write))))))

(global-set-key (kbd "<f2>") 'org-pomodoro)

;; this setting can help us to read long line more easily.
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
