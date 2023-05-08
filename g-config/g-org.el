(global-set-key (kbd "<f2>") 'org-pomodoro)
(setq org-startup-truncated nil)

;; configurations for babel
(org-babel-do-load-languages
      'org-babel-load-languages
      '((python . t)))
(provide 'g-org)
