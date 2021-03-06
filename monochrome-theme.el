;;; monochrome-theme.el --- gray on black for your focused hacking sessions

;; Copyright (C) 2011 Xavier Noria
;;
;; Author: Xavier Noria <fxn@hashref.com>
;;
;; Just throw this file into ~/.emacs.d and
;;
;;     M-x load-theme RET monochrome RET
;;
;; or put in your init file
;;
;;     (load-theme 'monochrome)
;;
;; This theme is based on the builtin dichromacy theme.
;;
;; Works with Emacs 24.

(deftheme monochrome
  "Gray on black for your focused hacking sessions.")

(let ((class '((class color) (min-colors 10)))
      (black "black")
      (white "white")
      (lgray "light gray")
      (dgray "dark gray")
      (sgray "light slate gray"))

  (custom-theme-set-faces
   'monochrome

   `(default ((,class (:foreground ,lgray :background ,black))))
   `(cursor ((,class (:background ,lgray))))

   ;; Highlighting faces
   `(fringe ((,class (:background ,lgray))))
   `(highlight ((,class (:foreground ,black :background ,lgray))))
   `(region ((,class (:foreground ,black :background ,lgray))))
   `(secondary-selection ((,class (:foreground: ,black :background ,sgray))))
   `(isearch ((,class (:foreground ,black :background ,lgray))))
   `(lazy-highlight ((,class (:foreground ,black :background ,lgray))))
   `(trailing-whitespace ((,class (:background ,lgray))))

   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
			      :background "#e5e5e5" :foreground ,black))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
				       :background "#b0b0b0"
				       :foreground ,black))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,lgray))))
   `(escape-glyph ((,class (:foreground ,lgray))))
   `(error ((,class (:weight bold :slant italic :foreground "red"))))
   `(warning ((,class (:foreground "yellow"))))
   `(success ((,class (:foreground "green"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,lgray))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,dgray))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-function-name-face ((,class (:foreground ,white))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,white))))
   `(font-lock-string-face ((,class (:foreground ,sgray))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,sgray))))
   `(font-lock-warning-face ((,class (:foreground "yellow"))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,lgray))))
   `(link-visited ((,class (:underline t :foreground ,lgray))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-4-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-5-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-1-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-2-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-mail-3-low ((,class (:foreground ,lgray))))
   `(gnus-group-mail-low ((,class (:foreground ,lgray))))
   `(gnus-header-content ((,class (:foreground ,lgray))))
   `(gnus-header-from ((,class (:weight bold :foreground ,lgray))))
   `(gnus-header-subject ((,class (:foreground ,lgray))))
   `(gnus-header-name ((,class (:foreground ,lgray))))
   `(gnus-header-newsgroups ((,class (:foreground ,lgray))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,lgray))))
   `(message-header-cc ((,class (:foreground ,lgray))))
   `(message-header-other ((,class (:foreground ,lgray))))
   `(message-header-subject ((,class (:foreground ,lgray))))
   `(message-header-to ((,class (:weight bold :foreground ,lgray))))
   `(message-cited-text ((,class (:slant italic :foreground ,lgray))))
   `(message-separator ((,class (:weight bold :foreground ,lgray))))
   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,lgray))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,lgray)))))

  (custom-theme-set-variables
   'monochrome
   `(ansi-color-names-vector [,black ,lgray ,dgray ,sgray])))

(provide-theme 'monochrome)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; monochrome-theme.el ends here
