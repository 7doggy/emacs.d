(require-package 'helm-projectile)
(require 'helm-projectile)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-switch-project-action 'helm-projectile)
(helm-projectile-on)
(setq projectile-enable-caching t)
(global-set-key [f5] 'helm-projectile)

(provide 'init-helm-projectile)
