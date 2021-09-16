; -*- coding: utf-8 -*-
;; Configure two extra types of scrolling
; scroll functions: stick the text line
;(global-set-key (kbd "M-n")
;		(lambda (&optional n)
;		  (interactive "p")
;		  (scroll-up (or n 1))))
;(global-set-key (kbd "M-p")
;		(lambda (&optional n)
;		  (interactive "p")
;		  (scroll-down (or n 1))))
; scroll functions: stick the absolut line
(defun hold-line-scroll-up()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-up 1)
    (line-move-to-column tmp)
    (forward-line 1)))
(defun hold-line-scroll-down()
  "Scroll the page with the cursor in the same line"
  (interactive)
  ;; move the cursor also
  (let ((tmp (current-column)))
    (scroll-down 1)
    (line-move-to-column tmp)
    (forward-line -1)))

; define the key binding
(global-set-key (kbd "M-n") 'hold-line-scroll-up)
(global-set-key (kbd "M-p") 'hold-line-scroll-down)
(global-set-key (kbd "ESC <down>") 'hold-line-scroll-up)
(global-set-key (kbd "ESC <up>") 'hold-line-scroll-down)
(global-set-key (kbd "C-x x") 'shell)
(global-set-key (kbd "C-x y") 'rename-buffer)

;; 关闭文件自动备份
(setq make-backup-files nil)
;; 设置滚屏幅度
(setq scroll-step 1)
;; 禁用初始界面
(setq inhibit-startup-message t)
;; 隐藏菜单栏、工具栏、滚动条
;(tool-bar-mode 0)
(menu-bar-mode 0)
;(scroll-bar-mode 0)
;; 缩进
(setq indent-tabs-mode 0)
(setq-default indent-tabs-mode  nil)
(setq c-default-style
      '((c-mode . "k&r") (other . "gnu")))
(setq c-basic-offset 4)

;; 打开ANSI彩色字符支持
(ansi-color-for-comint-mode-on)

;; color-theme
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme")
(require 'color-theme)

;; Desktop
(desktop-save-mode 1)

;; Session
(add-to-list 'load-path "~/.emacs.d/site-lisp/session")
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

;; ESS
(add-to-list 'load-path "~/.emacs.d/site-lisp/ess")
(require 'ess-site)

;; cscope
(add-to-list 'load-path "~/.emacs.d/site-lisp/cscope")
(require 'xcscope)

;; cedet
(require 'cedet)
(require 'semantic)

;; ecb
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb")
(require 'ecb)
(semantic-mode 1)
(global-semantic-idle-scheduler-mode)
(global-semanticdb-minor-mode)

;; pos-tip
(add-to-list 'load-path "~/.emacs.d/site-lisp/pos-tip")
(require 'pos-tip)

;; popup
(add-to-list 'load-path "~/.emacs.d/site-lisp/popup-el")
(require 'popup)

;; fuzzy
(add-to-list 'load-path "~/.emacs.d/site-lisp/fuzzy-el")
(require 'fuzzy)

;; auto-compelte
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete")
(require 'auto-complete)
(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/ac-dict")
;(add-to-list 'ac-user-dictionary-files "~/.emacs.d/site-lisp/auto-complete/my-dict")
(ac-config-default)
;(setq ac-fuzzy-enable t)
;(setq ac-quick-help-prefer-pos-tip t)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
(yas-global-mode 1)
