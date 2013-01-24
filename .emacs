;; 不显示开机画面
(setq inhibit-startup-screen t)
(setq initial-buffer-choice t)

;; 显示行号
(global-linum-mode t)

;; 关闭文件自动备份
(setq make-backup-files nil)

;; 设置颜色主题
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

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
