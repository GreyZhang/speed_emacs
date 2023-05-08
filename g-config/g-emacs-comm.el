(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

(setq make-backup-files nil)
(setq visible-bell 0)
(setq inhibit-startup-screen t)
(fset 'yes-or-no-p'y-or-n-p)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-linum-mode t)

(menu-bar-mode 0)
(global-auto-revert-mode 1)

;; (setq initial-frame-alist (quote ((fullscreen . maximized))))
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
;; explicitly set the prefered coding systems to avoid annoying prompt
;; from emacs (especially on Microsoft Windows)
(prefer-coding-system 'utf-8)

;; make electric-pair-mode work on more brackets
(setq electric-pair-pairs
	'(
	  (?\" . ?\")
	  (?\{ . ?\})))
;; auto close bracket insertion. New in emacs 24
(electric-pair-mode 1)

(defun xah-save-all-unsaved ()
  "Save all unsaved files. no ask.
Version 2019-11-05"
  (interactive)
  (save-some-buffers t ))

(if (version< emacs-version "27")
    (add-hook 'focus-out-hook 'xah-save-all-unsaved)
  (setq after-focus-change-function 'xah-save-all-unsaved))
;;
(provide 'g-emacs-comm)
