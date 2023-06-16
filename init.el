;; Try to solve the installation problems on Linux
(setq package-check-signature 'allow-unsigned)

(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))))

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
(defvar my/packages '(
		      use-package
		      quelpa
		      iedit
		      which-key
		      company
		      find-file-in-project
		      counsel-etags
		      org-pomodoro
		      restart-emacs
		      sound-wav
		      benchmark-init
		      hungry-delete
		      irony
		      company-irony
		      company-irony-c-headers
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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(custom-enabled-themes '(sanityinc-tomorrow-bright))
 '(custom-safe-themes
   '("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" default))
 '(menu-bar-mode nil)
 '(org-archive-location "%s_2023_05_archive::")
 '(org-download-backend "wget \"%s\" -O \"%s\"")
 '(org-pomodoro-length 10)
 '(org-pomodoro-long-break-length 5)
 '(org-pomodoro-short-break-length 3)
 '(package-selected-packages
   '(org-present company-irony-c-headers find-file-in-project evil evil-leader iedit autopair which-key company))
 '(recentf-auto-cleanup 'never)
 '(recentf-max-menu-items 100)
 '(recentf-max-saved-items 200)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
