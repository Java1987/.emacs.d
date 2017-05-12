;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

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
;; tab width
(setq default-tab-width 4)

;; open up with full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; require component
(require 'init-electric) ;; pair mode
(require 'init-kbs) ;; key bindings
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

;; org-mode
(require 'init-org)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#839496" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"))
 '(cfs--current-profile "profile1" t)
 '(cfs--profiles-steps (quote (("profile1" . 6))) t)
 '(custom-enabled-themes (quote (suscolors)))
 '(custom-safe-themes
   (quote
	("a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" default)))
 '(fci-rule-color "#073642")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#dc322f")
	 (40 . "#cb4b16")
	 (60 . "#b58900")
	 (80 . "#859900")
	 (100 . "#2aa198")
	 (120 . "#268bd2")
	 (140 . "#d33682")
	 (160 . "#6c71c4")
	 (180 . "#dc322f")
	 (200 . "#cb4b16")
	 (220 . "#b58900")
	 (240 . "#859900")
	 (260 . "#2aa198")
	 (280 . "#268bd2")
	 (300 . "#d33682")
	 (320 . "#6c71c4")
	 (340 . "#dc322f")
	 (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
