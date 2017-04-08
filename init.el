
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((minver "23.3"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

;; def marco
(defconst *is-a-mac* (eq system-type 'darwin))
;; line number
;; (global-linum-mode t) 

;; disable welcome page
(setq inhibit-startup-message t)
(setq default-tab-width 4)

;; open up with full screen
;; (setq initial-frame-alist (quote ((fullscreen . maximized))))

;; map C-2 to C-@, not effects 
;; (define-key key-translation-map [(control 2)] [(control @)])

;; require component
(require 'init-electric) ;; pair mode
(require 'init-utils) ;; base function

(require 'init-elpa) ;; package manager

;; (require 'init-xterm) ;; config 4 xterm
(require 'init-chinese) ;; not useful
(require 'init-themes) ;; config themes

(require 'init-recentf) ;; recent file.
(require 'init-smex) ;; recent command.
;;(require 'init-ido) ;; C-x C-f & M-x auto complete.
(require 'init-ivy) ;; replace ido.

;;(require-package 'diminish) 
(require 'init-company) ;; auto complete tools, depend init-utils.

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
    ("b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
