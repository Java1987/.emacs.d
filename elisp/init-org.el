
(require 'org)

(setq org-src-fontify-natively t)

;;(setq org-agenda-files "~/Documents/ORG/")
;;(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-export-backends (quote (ascii html icalendar latex md)))

(provide 'init-org)
