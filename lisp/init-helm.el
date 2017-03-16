(require-package 'helm)
(require 'helm)

(setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

(global-set-key (kbd "M-x") 'helm-M-x)

(provide 'init-helm)
