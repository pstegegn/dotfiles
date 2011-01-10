;; Add ` '-Pair for elisp
(add-hook 'emacs-lisp-mode-hook
           #'(lambda ()
               (push '(?` . ?')
                     (getf autopair-extra-pairs :comment))
               (push '(?` . ?')
                     (getf autopair-extra-pairs :string))))
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-c") 'eval-buffer)
            (setq mode-name "eL")))

(dolist (hook '(clojure-mode-hook lisp-mode-hook))
  (add-hook hook
            ;; viper overshadows slime-repl binding
            (lambda () (local-set-key (kbd "C-c M-p") 'slime-repl-set-package))))

(add-hook 'slime-repl-mode-hook
          (lambda () (local-set-key (kbd "C-c C-z") 'other-buffer)))

(defun subst-autopair-with-paredit ()
  (interactive)
  (setq autopair-dont-activate t)
  (enable-paredit-mode))

(require-and-exec 'paredit
  (dolist (hook '(lisp-interaction-mode-hook
                  emacs-lisp-mode-hook
                  lisp-mode-hook
                  clojure-mode-hook
                  slime-repl-mode-hook))
    (add-hook hook 'subst-autopair-with-paredit)))

(add-to-list 'auto-mode-alist '("\\.cl$" . lisp-mode))

(add-to-list 'load-path "~/dev/lisp/slime/")
(setq slime-lisp-implementations
      '((sbcl ("sbcl") :coding-system utf-8-unix)))

(setq slime-net-coding-system 'utf-8-unix)

(add-hook 'sldb-mode-hook #'(lambda () (setq autopair-dont-activate t)))

(require-and-exec 'slime
     (require 'slime-autoloads)
     (slime-setup '(slime-repl)))

(define-key read-expression-map (kbd "TAB") 'lisp-complete-symbol)

(provide 'cofi-lisp)
