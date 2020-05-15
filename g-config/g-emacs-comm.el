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
;; (setq default-buffer-file-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-clipboard-coding-system 'utf-8)  
(setq ansi-color-for-comint-mode t)
(modify-coding-system-alist 'process "*" 'utf-8)  
(setq-default pathname-coding-system 'utf-8)  
(prefer-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))  
(setq locale-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8) 
(setq default-buffer-file-coding-system 'utf-8)  
(setq slime-net-coding-system 'utf-8-unix)

;;; =========
;;; Note that if you save a heap image, the character
;;; encoding specified on the command line will be preserved,
;;; and you won't have to specify the -K utf-8 any more.
;;; (setq inferior-lisp-program "/usr/local/bin/ccl64 -K utf-8")

(setq inferior-lisp-program "dx86cl64 -K utf-8")
(setq inferior-lisp-program "sbcl -K utf-8")

;;
(provide 'g-emacs-comm)
