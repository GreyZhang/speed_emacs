(setq backward-delete-char-untabify-method nil)
;; (defun my-c-mode-hook ()
;;   (setq c-basic-offset 4
;; 	c-indent-level 4
;; 	c-default-style "bsd"))
;; (add-hook 'c-mode-common-hook 'my-c-mode-hook)
(add-hook 'c-mode-hook
          (lambda ()
            (c-set-style "linux")
            (setq c-basic-offset 4)))
(add-hook 'c++-mode-hook
          (lambda ()
            (c-set-style "stroustrup")))


;; Irony-mode would be used by company-irony-c-headers
;; Windows performance tweaks
;;
(when (boundp 'w32-pipe-read-delay)
  (setq w32-pipe-read-delay 0))
;; Set the buffer size to 64K on Windows (from the original 4K)
(when (boundp 'w32-pipe-buffer-size)
  (setq irony-server-w32-pipe-buffer-size (* 64 1024)))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;; company backend settings
(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))
(provide 'g-c-mode)
