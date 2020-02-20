;; swiper
;;(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "<f2>")  'open-my-init-file)

(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


;; 绑定git 快捷键
(global-set-key (kbd "C-c p f") 'counsel-git)


;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

;; 未选中缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; 另一种补全方式
(global-set-key (kbd "s-/") 'hippie-expand)

;; dired  延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))


(global-set-key (kbd "C-c r") 'org-capture)

(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

(js2r-add-keybindings-with-prefix "C-c C-m")

;; expand-region 快捷键
;; C-= 扩大区域 C-- C-= 缩小区域
(global-set-key (kbd "C-=") 'er/expand-region)

;; 绑定 iedit 编辑模式
(global-set-key (kbd "M-s e") 'iedit-mode)

(global-set-key (kbd "M-s i") 'counsel-imenu)

;; 我们可以使用下面的配置来在 Company-mode 中使用 C-n 与 C-p 来选择补全项，
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))


;; helm-ag 绑定快捷键
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)

;; auto-yasnippet 也是一个非常好用代码块补全插件。安装并未其设置快捷键
(global-set-key (kbd "H-w") #'aya-create)
(global-set-key (kbd "H-y") #'aya-expand)

;;开始之前我们先将 C-w 来使其可以向后删除一个单词，这样就可以与 Shell 中的快捷键操作同步
(global-set-key (kbd "C-w") 'backward-kill-word)


(provide 'init-keybindings)
