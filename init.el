
(let ((minver "23.3"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

;; def marco
(defconst *is-a-mac* (eq system-type 'darwin))

;; disable welcome page
;; (setq inhibit-startup-message t)

;; require component
(require 'init-utils) ;; base function

(require 'init-elpa) ;; package manager

;;(require 'init-xterm) ;; config 4 xterm

(require 'init-chinese) ;; not useful
(require 'init-themes) ;; config themes

(require 'init-recentf) ;; recent file.
(require 'init-smex) ;; recent used M-x command.
;;(require 'init-ido) ;; C-x C-f & M-x auto complete.
(require 'init-ivy) ;; replace ido.

(require-package 'diminish) 
(require 'init-company) ;; auto complete tools, depend init-company.

;; (custom-set-variables)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cfs--current-profile "profile1" t)
 '(cfs--profiles-steps (quote (("profile1" . 5))) t)
 '(custom-enabled-themes (quote (suscolors)))
 '(custom-safe-themes
   (quote
    ("b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" "a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
