(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

;; show lines and time
(global-display-line-numbers-mode)
(display-time-mode)

;; lockfiles and backup files
;; not working
(setq create-lockfiles nil)
(setq make-backup-files nil)

(global-set-key (kbd "C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<down>") 'shrink-window)
(global-set-key (kbd "C-<up>") 'enlarge-window)


;; Helm
(require 'helm-config)
(require 'helm)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(define-key helm-map (kbd "TAB") #'helm-execute-persistent-action)
(define-key helm-map (kbd "<tab>") #'helm-execute-persistent-action)


(global-set-key "\C-xp" (lambda ()
  (interactive)
  (other-window -1)))

;; set TAB to indent 4 spaces
(setq-default tab-width 4)
(global-set-key (kbd "TAB") #'my-insert-tab-char)
(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yafolding markdown-mode typescript-mode web-mode yaml-mode org-bullets org monitor json-mode js3-mode helm groovy-mode dockerfile-mode bicycle ansible-doc ansible)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; code folding
(add-to-list 'load-path (expand-file-name "./origami.el/"))
(require 'origami)
