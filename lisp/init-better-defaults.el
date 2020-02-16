;; 忽略 上下翻铃声
(setq ring-bell-function 'ignore)

;; 打开行号
(global-linum-mode t)


(global-auto-revert-mode t)


;; 激活缩写
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8zl" "zilongshanren")
					    ;; emacs regex
					    ;; Macrosoft
					    ("8ms" "Macrosoft")
					    ))

;; 禁用打开备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)

(recentf-mode t)
(setq recentf-max-menu-items 25)


;; 高亮匹配括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;; 好用delete
(delete-selection-mode t)

;; 未选中缩进
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

;; 另一种补全方式 hippie
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))


;; dired mode 确认 由yes no 改为 y n
(fset 'yes-or-no-p 'y-or-n-p)
;; 删除文件时候 是否递归删除文件夹中的文件 如果觉得不合适 可以慎用
(setq dired-recursive-deletes 'always)
;; 是否拷贝文件夹中所有文件
(setq dired-recursive-copies 'always)

;; 让 Emacs 重用唯一的一个缓冲区作为 Dired Mode 显示专用缓冲区
(put 'dired-find-alternate-file 'disabled nil)

;;(require 'dired)
;;(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 快捷键 C-x C-j 打开当前文件的dired mode
(require 'dired-x)

;;  则可以使当一个窗口（frame）中存在两个分屏 （window）时，将另一个分屏自动设置成拷贝地址的目标
(setq dired-dwin-target t)

(provide 'init-better-defaults)
