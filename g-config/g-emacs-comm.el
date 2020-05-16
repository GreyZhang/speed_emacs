(setq make-backup-files nil)
(setq visible-bell 0)
(setq inhibit-startup-screen t)
(fset 'yes-or-no-p'y-or-n-p)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-linum-mode t)

(menu-bar-mode 0)
(global-auto-revert-mode 1)

(setq initial-frame-alist (quote ((fullscreen . maximized))))
(add-hook 'prog-mode-hook #'hs-minor-mode)
(scroll-bar-mode 0)
(global-hl-line-mode 1)
(setq auto-save-default nil)

(when (eq system-type 'windows-nt)
  (setq gc-cons-threshold (* 512 1024 1024))
  (setq gc-cons-percentage 0.5)
  (run-with-idle-timer 5 t #'garbage-collect))

;; recent open files process
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 100)

;; better support for chinese coding
(set-buffer-file-coding-system 'utf-8)

;;
(provide 'g-emacs-comm)
