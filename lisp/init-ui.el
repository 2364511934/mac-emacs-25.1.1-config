;; 关闭 工具栏 
(tool-bar-mode -1)

;; 关闭滚动条
;;emacs 26.3 unsupport
;;(scroll-bar-mode -1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 更改光标的样式
(setq-default cursor-type 'bar)

;; 打开全屏模式
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 高亮显示当前行
(global-hl-line-mode 1)

(provide 'init-ui)
