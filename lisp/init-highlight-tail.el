(require-package 'highlight-tail)
(require 'highlight-tail)

;;适合黑底白字
(setq highlight-tail-colors '(("black" . 0)
                              ("#bc2525" . 25)
                              ("black" . 66)))

(highlight-tail-mode)

(provide 'init-highlight-tail)
