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
(global-set-key (kbd "<f8>") 'org-download-clipboard)

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

;; org-roam
(use-package org-roam
  :ensure t)

;; (use-package org-roam-server
;;   :ensure t
;;   :config
;;   (setq org-roam-server-host "127.0.0.1"
;;         org-roam-server-port 8080
;;         org-roam-server-authenticate nil
;;         org-roam-server-export-inline-images t
;;         org-roam-server-serve-files nil
;;         org-roam-server-served-file-extensions '("pdf" "mp4" "ogv")
;;         org-roam-server-network-poll t
;;         org-roam-server-network-arrows nil
;;         org-roam-server-network-label-truncate t
;;         org-roam-server-network-label-truncate-length 60
;;         org-roam-server-network-label-wrap-length 20))

(provide 'g-org)
