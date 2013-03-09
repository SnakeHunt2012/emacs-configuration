;;=========================================================
;; ESC x eval-last-sexp 使.emacs中光标前的那一条语句立刻生效
;; ESC x eval-region   使.emacs中选中的region中的语句立刻生效
;; ESC x eval-buffer   使当前的buffer中的设置语句立刻生效
;; ESC x load-file ~/.emacs  载入.emacs文件，从而使其中的设置生
;;=========================================================

;; 设置用户信息
(setq user-full-name "SnakeHunt2012")
(setq user-mail-address "SnakeHunt2012@gmail.com")

;; 不显示开机画面
(setq inhibit-startup-screen t)
(setq initial-buffer-choice t)

;; 显示行号列号
(global-linum-mode t)
(column-number-mode 1)

;; 高亮当前行
(global-hl-line-mode 1)

;; 高亮当前列
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'vline)
(vline-global-mode)

;; 关闭文件自动备份
(setq make-backup-files nil)

;; 设置颜色主题
(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)

;; 设置Org-mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; 窗口设置
(tool-bar-mode 0)  ; 隐藏工具栏
(menu-bar-mode 0)  ; 隐藏菜单栏
(scroll-bar-mode 0) ; 隐藏滚动条

;; 默认使用Bash Shell执行命令
(setq shell-file-name "/bin/bash")

;; 对.m文件默认使用octave-mode
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

;; Yasnippet 插件
(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/initialize)
(setq yas/root-directory '("~/.emacs.d/plugins/yasnippet/snippets"
			   "~/.emacs.d/mysnippets"))
(mapc 'yas/load-directory yas/root-directory)

;; 设置卷屏步长
(setq scroll-step 1)

;; 设置缩进
; CC-mode缩进
(setq c-basic-offset 4) ; 设置缩进的基本单位
(setq c-default-style "k&r") ; 设置缩进风格
