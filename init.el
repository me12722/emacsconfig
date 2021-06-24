(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(global-display-line-numbers-mode)
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
