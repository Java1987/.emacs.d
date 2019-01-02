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
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote nil))
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "eecacf3fb8efc90e6f7478f6143fd168342bbfa261654a754c7d47761cec07c8" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" default)))
 '(fci-rule-color "#073642")
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (color-theme-monokai neotree org-plus-contrib helm-gtags suscolors-theme smex monokai-theme idomenu ido-ubiquitous fullframe diminish counsel company-quickhelp color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized chinese-fonts-setup)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
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
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
