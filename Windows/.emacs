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

;; �ر��ļ��Զ�����
(setq make-backup-files nil)

;; To make text mode the default major mode
(setq default-major-mode 'text-mode)

;; To start auto-fill mode automatically 
;(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; ��ʾ�к�
(global-linum-mode t)

;; ���ù�������
(setq scroll-step 1)
;;      scroll-conservatively 1)
;;      scroll-margin 50

;; ��������ó�Ϊ����
;(setq-default cursor-type 'bar)

;; ����꿿������ʱ��,������Զ��㿪(���Ч���ǳ���cute)
(mouse-avoidance-mode 'animate)

;;-------------------------Shell ʹ�� ansi color-------------
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; ƽ������
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

; Latex ���Ļ���
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-engine 'xetex)       ; use xelatex default
            (TeX-global-PDF-mode t)))      ; PDF mode enable, not plain
