(require-package 'helm-projectile)
(require 'helm-projectile)

(projectile-global-mode)
(setq projectile-enable-caching t)
(global-set-key [f5] 'helm-projectile)

(provide 'init-helm-projectile)
