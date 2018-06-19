(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist '(("." . "~/.emacs.d/backup.d"))    ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups
(setq auto-save-file-name-transforms
            `((".*" "~/.emacs.d/autosave.d/" t)))

(add-to-list 'auto-mode-alist '("\\.launch\\'" . nxml-mode))

(setq tab-width 4)
(setq-default c-basic-offset 4)
(setq c-default-style "linux"
      c-basic-offset 4)
(setq c-toggle-hungry-state 1)
(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))

(defun my-indent-setup ()
  (c-set-offset 'arglist-intro '+))
    (add-hook 'java-mode-hook 'my-indent-setup)
