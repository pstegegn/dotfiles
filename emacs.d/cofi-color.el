(require 'color-theme)
(color-theme-initialize)

(defun color-theme-cofi ()
  (interactive)
  (color-theme-install
   '(color-theme-cofi
     ((background-color . "gray13")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "OrangeRed2")
      (foreground-color . "grey100")
      (mouse-color . "black"))
     ((help-highlight-face . underline)
      (ispell-highlight-face . highlight)
      (list-matching-lines-face . bold)
      (view-highlight-face . highlight)
      (viper-insert-state-cursor-color . "OrangeRed2")
      (viper-replace-overlay-cursor-color . "Red")
      (widget-mouse-face . highlight))
     (default ((t (:background "grey13" :foreground "grey100" :slant normal :weight normal :width normal))))
     (bbdb-company ((t (:italic t))))
     (bbdb-field-name ((t (:bold t))))
     (bbdb-field-value ((t (nil))))
     (bbdb-name ((t (:underline t))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (:background "black"))))
     (calendar-today-face ((t (:underline t))))
     (change-log-acknowledgement-face ((t (:foreground "Firebrick"))))
     (change-log-conditionals-face ((t (:foreground "DarkGoldenrod"))))
     (change-log-date-face ((t (:foreground "RosyBrown"))))
     (change-log-email-face ((t (:foreground "DarkGoldenrod"))))
     (change-log-file-face ((t (:foreground "Blue"))))
     (change-log-function-face ((t (:foreground "DarkGoldenrod"))))
     (change-log-list-face ((t (:foreground "Purple"))))
     (change-log-name-face ((t (:foreground "CadetBlue"))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "dark blue"))))
     (cursor ((t (:background "OrangeRed2"))))
     (custom-button-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-pressed-face ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (custom-changed-face ((t (:background "blue" :foreground "white"))))
     (custom-comment-face ((t (:background "gray85"))))
     (custom-comment-tag-face ((t (:foreground "blue4"))))
     (custom-documentation-face ((t (nil))))
     (custom-face-tag-face ((t (:bold t :family "helv" :weight bold :height 1.2))))
     (custom-group-tag-face ((t (:bold t :foreground "blue" :weight bold :height 1.2))))
     (custom-group-tag-face-1 ((t (:bold t :family "helv" :foreground "red" :weight bold :height 1.2))))
     (custom-invalid-face ((t (:background "red" :foreground "yellow"))))
     (custom-modified-face ((t (:background "blue" :foreground "white"))))
     (custom-rogue-face ((t (:background "black" :foreground "pink"))))
     (custom-saved-face ((t (:underline t))))
     (custom-set-face ((t (:background "white" :foreground "blue"))))
     (custom-state-face ((t (:foreground "dark green"))))
     (custom-variable-button-face ((t (:bold t :underline t :weight bold))))
     (custom-variable-tag-face ((t (:bold t :family "helv" :foreground "blue" :weight bold :height 1.2))))
     (diary-face ((t (:foreground "red"))))
     (diff-added-face ((t (nil))))
     (diff-changed-face ((t (nil))))
     (diff-context-face ((t (:foreground "grey50"))))
     (diff-file-header-face ((t (:bold t :background "grey70" :weight bold))))
     (diff-function-face ((t (:foreground "grey50"))))
     (diff-header-face ((t (:background "grey85"))))
     (diff-hunk-header-face ((t (:background "grey85"))))
     (diff-index-face ((t (:bold t :weight bold :background "grey70"))))
     (diff-nonexistent-face ((t (:bold t :weight bold :background "grey70"))))
     (diff-removed-face ((t (nil))))
     (dired-face-boring ((t (:foreground "RosyBrown"))))
     (dired-face-directory ((t (:foreground "Blue"))))
     (dired-face-executable ((t (nil))))
     (dired-face-flagged ((t (:foreground "Red" :weight bold))))
     (dired-face-marked ((t (:foreground "Red" :weight bold))))
     (dired-face-permissions ((t (nil))))
     (dired-face-setuid ((t (nil))))
     (dired-face-socket ((t (nil))))
     (dired-face-symlink ((t (:foreground "Purple"))))
     (ediff-current-diff-face-A ((t (:background "pale green" :foreground "firebrick"))))
     (ediff-current-diff-face-Ancestor ((t (:background "VioletRed" :foreground "Black"))))
     (ediff-current-diff-face-B ((t (:background "Yellow" :foreground "DarkOrchid"))))
     (ediff-current-diff-face-C ((t (:background "Pink" :foreground "Navy"))))
     (ediff-even-diff-face-A ((t (:background "light grey" :foreground "Black"))))
     (ediff-even-diff-face-Ancestor ((t (:background "Grey" :foreground "White"))))
     (ediff-even-diff-face-B ((t (:background "Grey" :foreground "White"))))
     (ediff-even-diff-face-C ((t (:background "light grey" :foreground "Black"))))
     (ediff-fine-diff-face-A ((t (:background "sky blue" :foreground "Navy"))))
     (ediff-fine-diff-face-Ancestor ((t (:background "Green" :foreground "Black"))))
     (ediff-fine-diff-face-B ((t (:background "cyan" :foreground "Black"))))
     (ediff-fine-diff-face-C ((t (:background "Turquoise" :foreground "Black"))))
     (ediff-odd-diff-face-A ((t (:background "Grey" :foreground "White"))))
     (ediff-odd-diff-face-Ancestor ((t (:background "light grey" :foreground "Black"))))
     (ediff-odd-diff-face-B ((t (:background "light grey" :foreground "Black"))))
     (ediff-odd-diff-face-C ((t (:background "Grey" :foreground "White"))))
     (fixed ((t (:bold t :weight bold))))
     (fixed-pitch ((t (:family "courier"))))
     (flyspell-duplicate-face ((t (:bold t :foreground "Gold3" :underline t :weight bold))))
     (flyspell-incorrect-face ((t (:bold t :foreground "OrangeRed" :underline t :weight bold))))
     (font-lock-builtin-face ((t (:foreground "Orchid"))))
     (font-lock-comment-face ((t (:foreground "Yellow"))))
     (font-lock-constant-face ((t (:foreground "Firebrick"))))
     (font-lock-doc-face ((t (:foreground "Yellow"))))
     (font-lock-doc-string-face ((t (:foreground "Yellow"))))
     (font-lock-function-name-face ((t (:foreground "Cornsilk"))))
     (font-lock-keyword-face ((t (:foreground "Purple"))))
     (font-lock-preprocessor-face ((t (:foreground "CadetBlue"))))
     (font-lock-reference-face ((t (:foreground "Orchid"))))
     (font-lock-string-face ((t (:foreground "Sienna"))))
     (font-lock-type-face ((t (:foreground "ForestGreen"))))
     (font-lock-variable-name-face ((t (:foreground "DarkGoldenrod"))))
     (font-lock-warning-face ((t (:bold t :foreground "Red" :weight bold))))
     (fringe ((t (:background "grey13"))))
     (header-line ((t (:box (:line-width -1 :style released-button) :background "grey90" :foreground "grey20" :box nil))))
     (hi-black-b ((t (:bold t :weight bold))))
     (hi-black-hb ((t (:bold t :family "helv" :weight bold :height 1.67))))
     (hi-blue ((t (:background "light blue"))))
     (hi-blue-b ((t (:bold t :foreground "blue" :weight bold))))
     (hi-green ((t (:background "green"))))
     (hi-green-b ((t (:bold t :foreground "green" :weight bold))))
     (hi-pink ((t (:background "pink"))))
     (hi-red-b ((t (:bold t :foreground "red" :weight bold))))
     (hi-yellow ((t (:background "yellow"))))
     (highlight ((t (:background "darkseagreen2"))))
     (highlight-changes-delete-face ((t (:foreground "red" :underline t))))
     (highlight-changes-face ((t (:foreground "red"))))
     (hl-line ((default (:background "grey20")) (nil nil)))
     (holiday-face ((t (:background "pink"))))
     (info-header-node ((t (:italic t :bold t :weight bold :slant italic :foreground "brown"))))
     (info-header-xref ((t (:bold t :weight bold :foreground "magenta4"))))
     (info-menu-5 ((t (:foreground "red1"))))
     (info-menu-header ((t (:bold t :family "helv" :weight bold))))
     (info-node ((t (:italic t :bold t :foreground "brown" :slant italic :weight bold))))
     (info-xref ((t (:bold t :foreground "magenta4" :weight bold))))
     (isearch ((t (:background "magenta4" :foreground "lightskyblue1"))))
     (isearch-lazy-highlight-face ((t (:background "paleturquoise"))))
     (italic ((t (:italic t :slant italic))))
     (log-view-file-face ((t (:bold t :background "grey70" :weight bold))))
     (log-view-message-face ((t (:background "grey85"))))
     (makefile-space-face ((t (:background "hotpink"))))
     (menu ((t (nil))))
     (modeline ((t (:background "SlateGray4" :foreground "black" :box (:line-width -1 :style released-button)))))
     (modeline-buffer-id ((t (:bold t :background "SlateGray4" :foreground "black" :box (:line-width -1 :style released-button)))))
     (modeline-mousable ((t (:background "SlateGray4" :foreground "black" :box (:line-width -1 :style released-button)))))
     (modeline-mousable-minor-mode ((t (:background "SlateGray4" :foreground "black" :box (:line-width -1 :style released-button)))))
     (mouse ((t (:background "black"))))
     (primary-selection ((t (:background "lightgoldenrod2"))))
     (reb-match-0 ((t (:background "lightblue"))))
     (reb-match-1 ((t (:background "aquamarine"))))
     (reb-match-2 ((t (:background "springgreen"))))
     (reb-match-3 ((t (:background "yellow"))))
     (region ((t (:background "gray33"))))
     (scroll-bar ((t (:background "grey75"))))
     (secondary-selection ((t (:background "yellow"))))
     (sh-heredoc-face ((t (:foreground "tan"))))
     (show-paren-match-face ((t (:background "yellow green"))))
     (show-paren-mismatch-face ((t (:background "purple" :foreground "white"))))
     (show-tabs-space-face ((t (:foreground "yellow"))))
     (show-tabs-tab-face ((t (:foreground "red"))))
     (smerge-base-face ((t (:foreground "red"))))
     (smerge-markers-face ((t (:background "grey85"))))
     (smerge-mine-face ((t (:foreground "blue"))))
     (smerge-other-face ((t (:foreground "darkgreen"))))
     (speedbar-button-face ((t (:foreground "green4"))))
     (speedbar-directory-face ((t (:foreground "blue4"))))
     (speedbar-file-face ((t (:foreground "cyan4"))))
     (speedbar-highlight-face ((t (:background "green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-tag-face ((t (:foreground "brown"))))
     (strokes-char-face ((t (:background "lightgray"))))
     (tex-math-face ((t (:foreground "RosyBrown"))))
     (texinfo-heading-face ((t (:foreground "Blue"))))
     (tooltip ((t (:background "Wheat" :foreground "black"))))
     (trailing-whitespace ((t (:background "red"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "helv"))))
     (linum ((t (:inherit (shadow default) :background "grey16" :foreground "khaki"))))
     (vcursor ((t (:background "grey20" :foreground "blue" :underline t))))
     (viper-minibuffer-emacs-face ((t (:background "darkseagreen2" :foreground "Black"))))
     (viper-minibuffer-insert-face ((t (:background "pink" :foreground "Black"))))
     (viper-minibuffer-vi-face ((t (:background "grey" :foreground "DarkGreen"))))
     (viper-replace-overlay-face ((t (:background "darkseagreen2" :foreground "Black"))))
     (viper-search-face ((t (:background "khaki" :foreground "Black"))))
     (widget-button-face ((t (:bold t :weight bold))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (widget-documentation-face ((t (:foreground "dark green"))))
     (widget-field-face ((t (:background "gray85"))))
     (widget-inactive-face ((t (:foreground "dim gray"))))
     (widget-single-line-field-face ((t (:background "gray85"))))
     (woman-addition-face ((t (:foreground "orange"))))
     (woman-bold-face ((t (:bold t :foreground "blue" :weight bold))))
     (woman-italic-face ((t (:italic t :foreground "red" :underline t :slant italic))))
     (woman-unknown-face ((t (:foreground "brown"))))
     (zmacs-region ((t (:background "lightgoldenrod2")))))))

(color-theme-cofi)
