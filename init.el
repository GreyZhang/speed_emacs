; The following configurations is copied from spacemacs-rocks from zilongshanren.
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://mirrors.163.com/elpa/gnu/")
                      ("melpa" . "http://mirrors.163.com/elpa/melpa/"))))

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
(defvar my/packages '(
		      evil
		      smex
		      evil-leader
		      iedit
		      autopair
		      which-key
		      company
                      ) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

(add-to-list 'load-path "~/.emacs.d/g-config")
(require 'g-config)

;; configurations for new package try.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-backends
   (quote
    ((company-dabbrev-code company-gtags company-etags company-keywords company-clang))))
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 158 :width normal)))))
