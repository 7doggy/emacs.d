(require-package 'helm)
(require 'helm)

(setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
;(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
	  helm-recentf-fuzzy-match    t)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;(global-set-key [f5] 'helm-browse-project)

(provide 'init-helm)
