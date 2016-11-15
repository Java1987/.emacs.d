
(let ((minver "23.3"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

;; def marco
(defconst is-a-mac (eq system-type 'darwin))
;; disable welcome page
(setq inhibit-startup-message t)

;; load theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'monokai t)

(require 'init-elpa)

(require 'init-theme)
