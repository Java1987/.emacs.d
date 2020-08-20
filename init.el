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
;; (tool-bar-mode 0)
;; hide menubar
(menu-bar-mode 0)
;; open up with full screen
;; (setq initial-frame-alist (quote ((fullscreen . maximized))))
;; hilight current line
(global-hl-line-mode 0)

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
(if *is-gui* (require 'init-cnfonts))
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
;; google translate
(require 'init-google-translate)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("f3ab34b145c3b2a0f3a570ddff8fabb92dafc7679ac19444c31058ac305275e1" default)))
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(package-selected-packages
   (quote
    (google google-translate smex neotree monokai-theme helm-gtags fullframe diminish counsel company-quickhelp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
