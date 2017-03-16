;; init.el
;; 把目录lisp/添加到搜索路径中去
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory))
;; 下面每一个被require的feature都对应一个lisp/目录下的同名
;; elisp文件，例如init-utils.el、init-elpa.el
(require 'init-utils)   ;; 为加载初始化文件提供一些自定义的函数和宏
(require 'init-elpa)    ;; 加载ELPA，并定义了require-package函数

(require 'init-yasnippet)
(require 'init-switch-window)
(require 'init-color-theme-molokai)
(require 'init-color-theme-zenburn)
(require 'init-helm)
(require 'init-color-theme-spacemacs)
(require 'init-magit)
;(require 'init-color-theme-solarized)
;(require 'init-auto-complete)
;(require 'init-ac-source)
;(require 'init-fonts)   ;; 以Server-Client模式启动时需额外设置字体
;(require 'init-editing-utils)  ;; 一些顺手的小工具  
;(require 'init-markdown)
;(require 'init-auctex)

(provide 'init)

;;init-configuration
(setq default-fill-column 80)
(setq frame-title-format "@%b")
(setq command-line-default-directory "~/")
(setq mouse-yank-at-point t)

;(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(global-linum-mode t)
(column-number-mode t)

(global-font-lock-mode t)
(transient-mark-mode t)
(show-paren-mode t)

;;tab set
(setq c-basic-offset 4)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

;;char set
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq default-pathname-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;set transparent effect   
(global-set-key [(f11)] 'loop-alpha)  
(setq alpha-list '((100 100) (95 65) (85 55) (75 45) (65 35)))  
(defun loop-alpha ()  
   (interactive)  
   (let ((h (car alpha-list)))                ;; head value will set to  
     ((lambda (a ab)  
        (set-frame-parameter (selected-frame) 'alpha (list a ab))  
        (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))  
        ) (car h) (car (cdr h)))  
     (setq alpha-list (cdr (append alpha-list (list h))))  
     )  
   )

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)

;;do not create backup file
(setq make-backup-files nil)

;;end init-configutation


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'spacemacs-light)
