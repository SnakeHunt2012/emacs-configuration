; -*- coding: utf-8 -*-

;; This is only needed once, near the top of the file
(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/site-lisp/use-package")
  (require 'use-package))

;; cedet
;; 开启前make
;(load-file "~/.emacs.d/site-lisp/cedet/cedet-devel-load.el")
;(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode t)
;(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-show-unmatched-syntax-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-show-parser-state-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-edits-mode t)
;(semantic-mode 1)

;; color-theme
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme")
(require 'color-theme)

;; desktop
(desktop-save-mode 1)

;; session
(add-to-list 'load-path "~/.emacs.d/site-lisp/session")
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

;; ess
;; 开启前make, make前修改Makeconf
;(add-to-list 'load-path "~/.emacs.d/site-lisp/ess/lisp")
;(require 'ess-site)

;; cscope
;(add-to-list 'load-path "~/.emacs.d/site-lisp/cscope")
;(require 'xcscope)

;; ecb
;(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb")
;(require 'ecb)
;(semantic-mode 1)
;(global-semantic-idle-scheduler-mode)
;(global-semanticdb-minor-mode)

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

;; ido
(require 'ido)

;; smex
(add-to-list 'load-path "~/.emacs.d/site-lisp/smex")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ; this is the old M-x

;; async
;; 开启前make，make前修改Makefile中的环境变量DESTDIR=$(HOME)/.emacs.d/site-lisp/async
;(add-to-list 'load-path "~/.emacs.d/site-lisp/async")
;(require 'async)

;; helm
;; 开启前make, make前修改Makefile中的环境变量STRAIGHT_DIR := $(HOME)/.emacs.d/site-lisp
;(add-to-list 'load-path "~/.emacs.d/site-lisp/helm")
;(use-package helm :config (require 'helm-config))

;; multiple-cursors
(add-to-list 'load-path "~/.emacs.d/site-lisp/multiple-cursors")
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; phi-search
(add-to-list 'load-path "~/.emacs.d/site-lisp/phi-search")
(require 'phi-search)
(global-set-key (kbd "C-s") 'phi-search)
(global-set-key (kbd "C-r") 'phi-search-backward)

;; ace-jump-mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/ace-jump-mode")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; powerline
(add-to-list 'load-path "~/.emacs.d/site-lisp/powerline")
(require 'powerline)

;; smart-mode-line
(add-to-list 'load-path "~/.emacs.d/site-lisp/rich-minority")
(add-to-list 'load-path "~/.emacs.d/site-lisp/smart-mode-line")
(require 'rich-minority)
(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
(sml/setup)

;; which-key
(add-to-list 'load-path "~/.emacs.d/site-lisp/which-key")
(require 'which-key)
(which-key-mode)

;; key-chord
(add-to-list 'load-path "~/.emacs.d/site-lisp/key-chord")
(require 'key-chord)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.001)
(setq key-chord-one-key-delay 0.002)
(key-chord-define-global "jk"     'undo)
(key-chord-define-global "df"     'set-mark-command)
(key-chord-define-global "<>"     "<>\C-b")
(key-chord-define-global "()"     "()\C-b")
(key-chord-define-global "[]"     "[]\C-b")
(key-chord-define-global "{}"     "{}\C-b")

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d053957aa11920c49b72426fd3cc2669250ab7183e31fbe730ed5978e92840d9" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(session-use-package t nil (session))
 '(sml/mode-width 'right)
 '(sml/pos-id-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   'powerline-active1 'powerline-active2
                   (window-mode-line-height))))
     (:propertize " " face powerline-active2)))
 '(sml/pos-minor-modes-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   'powerline-active1 nil
                   (window-mode-line-height))))
     (:propertize " " face sml/global)))
 '(sml/pre-id-separator
   '(""
     (:propertize " " face sml/global)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   nil 'powerline-active1
                   (window-mode-line-height))))
     (:propertize " " face powerline-active1)))
 '(sml/pre-minor-modes-separator
   '(""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   'powerline-active2 'powerline-active1
                   (window-mode-line-height))))
     (:propertize " " face powerline-active1)))
 '(sml/pre-modes-separator (propertize " " 'face 'sml/modes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
