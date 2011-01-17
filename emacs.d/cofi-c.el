(setq-default c-basic-offset 4)
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (c-mode . "linux")))

(setq comment-multi-line t)
(setq-default c-auto-newline t)

(require-and-exec 'c-eldoc
  (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode))

(provide 'cofi-c)