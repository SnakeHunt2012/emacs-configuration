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

;;-------------------------Shell 使用 ansi color-------------
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; 平滑滚动
(defun hold-line-scroll-up()
  "Scroll the page with the cursor in the same line"
  (interactive)
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
            (TeX-global-PDF-mode t)))      ; PDF mode enable, not plain
