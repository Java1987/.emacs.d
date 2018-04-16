;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)


(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; def marco
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-gui* (display-graphic-p))

;; line number
;; (global-linum-mode t) 
;; disable welcome page
(setq inhibit-startup-message t)
;; tab width
(setq default-tab-width 4)
;; bell
;; (setq visible-bell t)
;; .*~ files
(setq make-backup-files nil)
;; nothing
(auto-image-file-mode)
;; hide toolbar
(tool-bar-mode 0)
;; hide menubar
(menu-bar-mode 0)
;; open up with full screen
;; (setq initial-frame-alist (quote ((fullscreen . maximized))))
;; hilight current line
(global-hl-line-mode 1)

;; require component
;; pair mode
(require 'init-electric) 
;; key bindings
(require 'init-kbs)
;; base function
(require 'init-utils) 
;; package manager
(require 'init-elpa) 
;; config 4 xterm
;; (require 'init-xterm) 
(if *is-gui*
	(require 'init-cnfonts))
;; configration themes
(require 'init-themes) 
;; recent file.
(require 'init-recentf)
;; recent command.
(require 'init-smex)
;; C-x C-f & M-x auto complete.
;;(require 'init-ido)
;; replace ido.
(require 'init-ivy) 
;; (require-package 'diminish)
;; auto complete tools, depend init-utils.
(require 'init-company) 
;; helm-gtags
(require 'init-helm) 
;; org-mode
(require 'init-org)
;; neo tree
(require 'init-neotree)

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
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
	("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" default)))
 '(fci-rule-color "#073642")
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(package-selected-packages
   (quote
	(neotree org-plus-contrib helm-gtags suscolors-theme smex monokai-theme idomenu ido-ubiquitous fullframe diminish counsel company-quickhelp color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized chinese-fonts-setup)))
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
