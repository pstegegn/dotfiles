(mapc (lambda (ext)
        (push ext completion-ignored-extensions))
      '(
        ".dvi" ".djvu" ".ps"
        ".mov" ".mp4" ".ogv"
        ".mp3" ".ogg"
        ".doc" ".ods" ".odt" ".pps" ".ppt"
        ))

(setq ido-enable-regexp t
      ido-enable-dot-prefix t
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-url-at-point nil
      ido-use-filename-at-point nil
      ido-ignore-extensions t)

(eval-after-load "ido"
  '(progn
     (setq ido-ignore-buffers (append
                               ido-ignore-buffers
                               '(
                                 "\\` "
                                 "\\`\\*.*\\*"
                                 "_region_"
                                 )))
     (setq ido-ignore-directories (append
                                   ido-ignore-directories
                                   '(
                                     "^auto/$"
                                     "\\.prv/"
                                     "_region_"
                                     )))
     (setq ido-ignore-files (append
                             ido-ignore-files
                             '(
                               "^auto/$"
                               "_region_"
                               )))
     (fset 'ido-directory-too-big-p #'ignore)))

(ido-mode 'files)
(ido-everywhere 1)

;;; Dired ==============================
(setq dired-recursive-copies 'always
      dired-dwim-target t)
(require-and-exec 'dired+)
(add-hook 'dired-mode-hook 'turn-on-auto-revert-mode)
;;; ========================================

(setq ack-prompt-for-directory 'unless-guessed)

;;; Show trailing whitespace in file-buffers
(add-hook 'find-file-hook (lambda () (setq show-trailing-whitespace t)))


(defalias 'cofi/file 'ido-find-file)
(defalias 'cofi/buffer-alternate 'ido-switch-buffer)

(require 'cofi-anything)
(if (fboundp 'anything-buffers+)
    (progn
      (defalias 'cofi/buffer 'cofi/anything-buffers)
      (defalias 'cofi/file-alternate 'cofi/anything-files))
  (defalias 'cofi/buffer 'ido-switch-buffer)
  (defalias 'cofi/file-alternate 'ido-find-file))

;; bookmarks ==============================
(setq bookmark-default-file "~/var/emacs/bookmarks"
      bmkp-bmenu-commands-file "~/var/emacs/bmkp-bmenu-commands.el"
      bmkp-bmenu-state-file "~/var/emacs/bmkp-bmenu-state.el")

(require-and-exec 'bookmark+)
;;; ========================================
;;; backups & autosave
(setq backup-directory-alist '(("" . "~/var/emacs/backups")))
(setq auto-save-default nil
      auto-save-list-file-prefix "~/var/emacs/auto-save-list/save-")
;;; ========================================
;;; recent files ====================
(setq recentf-auto-cleanup 'never)
(setq recentf-max-saved-items 500)
(require-and-exec 'recentf
   (recentf-mode 1)
   (setq recentf-exclude '(
                           "\\.recentf"
                           "\\.ido\\.last"
                           "\\.keychain/.*?-sh\\(-gpg\\)?"
                           ))
   )
;;; ========================================
(provide 'cofi-files)