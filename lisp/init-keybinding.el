;; change some of the default settings in ergoemacs mode.
(global-set-key (kbd "C-h") 'move-beginning-of-line)
(global-set-key (kbd "C-e") 'move-end-of-line)

;; Open swiper
(global-set-key (kbd "C-f") 'swiper)

;; Open my init file
(global-set-key (kbd "<f1> q") 'open-init-el)

;; Key for finding variable, function and key, it is different from C-h v/f/k
(global-set-key (kbd "C-c C-f") 'find-function)
(global-set-key (kbd "C-c C-v") 'find-variable)
(global-set-key (kbd "C-c C-k") 'find-function-on-key)

;; Key to open recent files
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Key to open Agenda in Org mode 
(global-set-key (kbd "C-c a") 'org-agenda)

;; Key to open counsel-git, c forq counsel, g for git
(global-set-key (kbd "C-c c g") 'counsel-git)

;; Key to deal with the indent
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; Shift the M-/ key from dabbrev-expand to hippie-expand
(global-set-key (kbd "M-/") 'hippie-expand)

;; if open a folder with return key, use the same buffer
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; Key to switch the font profiles
(global-set-key (kbd "C-c s p") 'cnfonts-next-profile)

;; Move the forward char to key J and backward key to F ***
;; how to remenber? f and j has a small convex on the key, left and right.
;; (global-set-key (kbd "C-f") 'backward-char)
;; (global-set-key (kbd "C-j") 'forward-char)
;; (global-set-key (kbd "M-f") 'backward-word)
;; (global-set-key (kbd "M-j") 'forward-word)

;; Key to enable expand-region package
(global-set-key (kbd "C-=") 'er/expand-region)

;; Key to enable iedit-mode
(global-set-key (kbd "C-;") 'iedit-mode)

;; Key to open counsel-imenu
(global-set-key (kbd "M-s i") 'counsel-imenu)

;; Use short key to add heading template to the markdown document
(global-set-key (kbd "C-c 1")
		"#+STARTUP: showall indent
#+STARTUP: hidestars
#+EXPORT_FILE_NAME: d:/github/en.dlyang.me/_posts/2017---.md
#+EXPORT_FILE_NAME: d:/github/lanternd.github.io/blog/_posts/2017---.md
#+BEGIN_EXPORT html
---
layout: post
title: 1
description: 2.
permalink: //
categories: [Blog, 视界]
tags: []
date: 2017-- 22:34:56
---
#+END_EXPORT
* 　
")

;; key to quickly add TODO things. c-r r means remember.
(global-set-key (kbd "C-c r") 'org-capture)

;; change the default key binding in company active map
(with-eval-after-load 'company
    (define-key company-active-map (kbd "M-n") nil)
    (define-key company-active-map (kbd "M-p") nil)
    (define-key company-active-map (kbd "M-k") #'company-select-next)
    (define-key company-active-map (kbd "M-i") #'company-select-previous))

;; Key for auto-yasnippet
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)
(global-set-key (kbd "C-m") #'aya-open-line)

(provide 'init-keybinding)
