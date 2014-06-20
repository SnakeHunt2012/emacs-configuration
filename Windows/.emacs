(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(inhibit-startup-screen t)
 '(org-agenda-files (quote ("d:/CRF++/sdk/now.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; 关闭文件自动备份
(setq make-backup-files nil)

;; To make text mode the default major mode
(setq default-major-mode 'text-mode)

;; To start auto-fill mode automatically 
;(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; 显示行号
(global-linum-mode t)

;; 设置滚屏幅度
(setq scroll-step 1)
;;      scroll-conservatively 1)
;;      scroll-margin 50

;; 将光标设置成为竖线
;(setq-default cursor-type 'bar)

;; 当光标靠近鼠标的时候,让鼠标自动躲开(这个效果非常的cute)
(mouse-avoidance-mode 'animate)

;; 标题栏显示文件路径
(setq frame-title-format
      '("%S" (buffer-file-name "%f"
			       (dired-directory dired-directory "%b"))))
;; 显示时间
(display-time-mode 1)
; 24小时制
(setq display-time-24hr-format t)
; 显示日期
(setq display-time-day-and-date t)
; 将yes/no改成y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 隐藏菜单栏和工具栏
; 隐藏菜单栏
(menu-bar-mode -1)
; 隐藏工具栏
(tool-bar-mode -1)

;; 成对显示括号但不来回跳
;(show-paren-mode t)
;(setq show-paren-style 'parentheses)



;;-------------------------Shell 使用 ansi color-------------
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; 平滑滚动
(defun hold-line-scroll-up()
  "Scroll the page with the cursor in the same line"
  ((insert )nteractive)
  (let ((next-screen-context-lines
	 (count-lines
	  (window-start) (window-end)
	  )
	 ))
    (scroll-up)
    ))

(defun hold-line-scroll-down()
  "Scroll the page with the cursor in the same line"
  (interactive)
  (let ((next-screen-context-lines
        (count-lines
         (window-start) (window-end)
         )
        ))
    (scroll-down)
    ))
 
; define the key binding
(global-set-key (kbd "M-n") 'hold-line-scroll-up)
(global-set-key (kbd "M-p") 'hold-line-scroll-down)

; Latex 中文环境
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-engine 'xetex)       ; use xelatex default
            (TeX-global-PDF-mode t)))       ; PDF mode enable, not plain

; cmake-model
(setq load-path (cons (expand-file-name "D:\Program Files (x86)\emacs\site-lisp\cmake-model\cmake-mode") load-path))
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
		("\\.cmake\\'" . cmake-mode))
	      auto-mode-alist))

;; Configure Tramp
(require 'tramp)

;; python enviroment
;(setq python-shell-interpreter "ipython"
;      python-shell-interpreter-args ""
;      python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;      python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
;      python-shell-completion-setup-code
;      "from IPython.core.completerlib import module_completion"
;      python-shell-completion-module-string-code
;      "';'.join(module_completion('''%s'''))\n"
;      python-shell-completion-string-code
;      "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")
;(setq python-shell-interpreter "C:\\Python27\\python.exe"
;      python-shell-interpreter-args
;      "-i C:\\Python27\\Scripts\\ipython-script.py")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")
;(eval-after-load "pymacs"
;  '(add-to-list 'pymacs-load-path ""))
(load-file "D://Program Files (x86)/emacs/site-lisp/gabrielelanaro/epy-init.el")
;(package-initialize)
;(elpy-enable)

;; ELPA
;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;                         ("marmalage" . "http://marmalade-repo.org/packages/")
;                         ("melpa" . "http://melpa.milkbox.net/packages/")))
      
;; ess (for R language)
; basic configuration options
(setq ess-eval-visibly nil) ; ESS will not print the evaluated comands, also speeds up the evaluation 
(setq ess-ask-for-ess-directory nil) ;if you don't want to be prompted each time you start an interactive R session
; usefull keystrokes
(setq ess-ask-for-ess-directory nil)
(setq ess-local-process-name "R")
(setq ansi-color-for-comint-mode 'filter)
(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)
(defun my-ess-start-R ()
  (interactive)
  (if (not (member "*R*" (mapcar (function buffer-name) (buffer-list))))
      (progn
	(delete-other-windows)
	(setq w1 (selected-window))
	(setq w1name (buffer-name))
	(setq w2 (split-window w1))
	(R)
	(set-window-buffer w2 "*R*")
	(set-window-buffer w1 w1name))))

(defun my-ess-eval ()
  (interactive)
  (my-ess-start-R)
  (if (and transient-mark-mode mark-active)
      (call-interactively 'ess-eval-region)
    (call-interactively 'ess-eval-line-and-step)))

(add-hook 'ess-mode-hook
	  '(lambda()
	     (local-set-key [(shift return)] 'my-ess-eval)))

(add-hook 'inferior-ess-mode-hook
	  '(lambda()
	     (local-set-key [C-up] 'comint-previous-input)
	     (local-set-key [C-down] 'comint-next-input)))
(require 'ess-site)
(require 'ac-R)

; 关闭括号自动补全
(setq skeleton-pair nil)
