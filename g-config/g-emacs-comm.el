;; -*- coding: utf-8; lexical-binding: t; -*-
;; basic gnu emacs settings. Everything in this file is for plain gnu emacs only.
;; for emacs 28 or later.
;; 2022-11-11

;; ssss---------------------------------------------------

;; UTF-8 as default encoding
;; (set-language-environment "UTF-8")
;; (set-default-coding-systems 'utf-8-unix)
;; (set-terminal-coding-system 'utf-8-unix)

(setq default-frame-alist
      (if (display-graphic-p)
          '((tool-bar-lines . 0)
            (background-color . "honeydew")
            (width . 150)
            (height . 45))
        '((tool-bar-lines . 0))))

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
(setq recentf-max-menu-item 500)

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


;; ssss---------------------------------------------------
;; Emacs: Font Setup http://xahlee.info/emacs/emacs/emacs_list_and_set_font.html

(set-frame-font
 (cond
  ((string-equal system-type "windows-nt")
   (if (member "Consolas" (font-family-list)) "Consolas-13" nil ))
  ((string-equal system-type "darwin")
   (if (member "Menlo" (font-family-list)) "Menlo-16" nil ))
  ((string-equal system-type "gnu/linux")
   (if (member "DejaVu Sans Mono" (font-family-list)) "DejaVu Sans Mono" nil ))
  (t nil))
 nil t
 )

;; set font for symbols (symbol . [8220 8704 9472])
(set-fontset-font
 t
 'symbol
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "Segoe UI Symbol" (font-family-list)) "Segoe UI Symbol")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Apple Symbols" (font-family-list)) "Apple Symbols")))
  ((string-equal system-type "gnu/linux")
   (cond
    ((member "Symbola" (font-family-list)) "Symbola")))))

(progn
  ;; set font for emoji (if before emacs 28, should come after setting symbols. emacs 28 now has 'emoji . before, emoji is part of 'symbol)
  (set-fontset-font
   t
   (if (version< emacs-version "28.1")
       '(#x1f300 . #x1fad0)
     'emoji
     )
   (cond
    ((member "Apple Color Emoji" (font-family-list)) "Apple Color Emoji")
    ((member "Noto Color Emoji" (font-family-list)) "Noto Color Emoji")
    ((member "Noto Emoji" (font-family-list)) "Noto Emoji")
    ((member "Segoe UI Emoji" (font-family-list)) "Segoe UI Emoji")
    ((member "Symbola" (font-family-list)) "Symbola"))))

;; set font for cuneiform
(set-fontset-font
 t
 'cuneiform
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "Segoe UI Historic" (font-family-list)) "Segoe UI Historic")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Noto Sans Cuneiform Regular" (font-family-list)) "Noto Sans Cuneiform Regular")))
  ((string-equal system-type "gnu/linux")
   (cond
    ((member "Noto Sans Cuneiform Regular" (font-family-list)) "Noto Sans Cuneiform Regular")))))

(set-fontset-font
 t
 'phoenician
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "Segoe UI Historic" (font-family-list)) "Segoe UI Historic")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Noto Sans Phoenician Regular" (font-family-list)) "Noto Sans Phoenician Regular")))
  ((string-equal system-type "gnu/linux")
   (cond
    ((member "Noto Sans Phoenician Regular" (font-family-list)) "Noto Sans Phoenician Regular")))))

(set-fontset-font
 t
 'deseret
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "Segoe UI Symbol" (font-family-list)) "Segoe UI Symbol")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Apple Symbols" (font-family-list)) "Apple Symbols")))
  ((string-equal system-type "gnu/linux")
   (cond
    ((member "Noto Sans Deseret" (font-family-list)) "Noto Sans Deseret")))))

(set-fontset-font
 t
 'shavian
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "Segoe UI Historic" (font-family-list)) "Segoe UI Historic")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Apple Symbols" (font-family-list)) "Apple Symbols")))
  ((string-equal system-type "gnu/linux")
   (cond
    ((member "Noto Sans Shavian Regular" (font-family-list)) "Noto Sans Shavian Regular")))))

(set-fontset-font
 t
 'egyptian
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "Segoe UI Historic" (font-family-list)) "Segoe UI Historic")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Noto Sans Egyptian Hieroglyphs" (font-family-list)) "Noto Sans Egyptian Hieroglyphs")))
  ((string-equal system-type "gnu/linux")
   (cond
    ((member "Aegyptus" (font-family-list)) "Aegyptus")))))

;; set font for chinese
(set-fontset-font
 t
 'han
 (cond
  ((string-equal system-type "windows-nt")
   (cond
    ((member "Microsoft YaHei" (font-family-list)) "Microsoft YaHei")
    ((member "Microsoft JhengHei" (font-family-list)) "Microsoft JhengHei")
    ((member "SimHei" (font-family-list)) "SimHei")))
  ((string-equal system-type "darwin")
   (cond
    ((member "Hei" (font-family-list)) "Hei")
    ((member "Heiti SC" (font-family-list)) "Heiti SC")
    ((member "Heiti TC" (font-family-list)) "Heiti TC")))
  ((string-equal system-type "gnu/linux")
   (cond
    ((member "WenQuanYi Micro Hei" (font-family-list)) "WenQuanYi Micro Hei")))))

;;
(provide 'g-emacs-comm)
