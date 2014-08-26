; include this with: (load "~/dotfiles/emacs.el")

(require 'cc-mode)
(setq
	c-basic-offset 4
	default-tab-width 4
	c-default-style "k&r"
	c-recognize-knr-p nil
;	c-tab-always-indent 0
	indent-tabs-mode t)

(defun custom/c-mode-common-hook()
		(c-set-offset 'inline-open 0)
		(local-set-key [return] 'newline-and-indent))
(add-hook 'c-mode-common-hook 'custom/c-mode-common-hook)

;(global-set-key (kbd "RET") 'newline-and-indent)

(show-paren-mode 1)

(defun custom/compile()
		(interactive)
		(save-some-buffers t)
		(compile "make"))
(global-set-key [f9] 'custom/compile)

(global-set-key (kbd "M-g w") 'whitespace-mode)
(global-set-key (kbd "M-g l") 'linum-mode)
(setq-default bidi-display-reordering nil)
