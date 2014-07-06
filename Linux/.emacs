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
;(global-hl-line-mode 1)

;; 高亮当前列
;(add-to-list 'load-path "~/.emacs.d/plugins")
;(require 'vline)
;(vline-global-mode)

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

;; 默认使用ZShell执行命令
(setq shell-file-name "/bin/zsh")

;; 对.m文件默认使用octave-mode
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

;; 设置卷屏步长
(setq scroll-step 1)

;; 设置缩进
; CC-mode缩进
(setq c-basic-offset 4) ; 设置缩进的基本单位
(setq c-default-style "k&r") ; 设置缩进风格

;; 默认使用系统剪切板
(setq x-select-enable-clipboard t)

;; 设置emacs矩形操作
;(require 'rect-mark)

;; 设置字体
(set-default-font "Courier New")

;; emacs-w3m
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-w3m")
(require 'w3m-load)
; 设置w3m主页
(setq w3m-home-page "http://www.google.com.hk")
; 默认显示图片
(setq w3m-default-display-inline-images t)
(setq w3m-default-toggle-inline-images t)
; 使用cookies
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-view-this-url-new-session-in-background t)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-view-this-url-new-session-in-background t)

;; Emacs Lisp interface to the PostgreSQL RDBMS
(add-to-list 'load-path "~/.emacs.d/plugins/pg")
(require 'pg)
(setq sql-postgres-options (list "-p 5432"))


;; for python-mode + ipython
(add-to-list 'load-path "~/.emacs.d/plugins/python-mode") 
(add-to-list 'load-path "~/.emacs.d/plugins/ipython") 
(setq py-install-directory "~/.emacs.d/plugins/python-mode")
(setq py-shell-name "ipython")
(setq ipython-command "/usr/bin/ipython")
(setq py-python-command "ipython")
(require 'python-mode)
(require 'ipython) 

;; setting multi-term
(add-to-list 'load-path "~/.emacs.d/plugins/multi-term") 
(setq multi-term-program "/usr/bin/zsh")
(require 'multi-term)

;; setting auto-complete
(add-to-list 'load-path 
	     "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories 
	     "~/.emacs.d/plugins/auto-complete/ac-dict")
(add-to-list 'ac-user-dictionary-files
	     "~/.emacs.d/plugins/auto-complete/my-dict")
(ac-config-default)
; set trigger of auto-complete
;(setq ac-auto-start nil) ; disable auto-start
(ac-set-trigger-key "<C-return>")
; enable fuzzy
(setq ac-fuzzy-enable t)
; add backspace to triggers
(setq ac-trigger-commands
      (cons 'backward-delete-char-untabify ac-trigger-commands))
; setting pos-tip
;(require 'pos-tip)
;(setq ac-quick-help-prefer-pos-tip t)

;; setting yasnippet 
(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/initialize)
(setq yas/root-directory '("~/.emacs.d/plugins/yasnippet/snippets"
			   "~/.emacs.d/mysnippets"))
(mapc 'yas/load-directory yas/root-directory)
