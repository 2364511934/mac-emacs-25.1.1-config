(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      org
		      ;; --- Auto-completion ---
		      company
		      ;; --- Better Editor ---
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      ;; --- Major Mode ---
		      js2-mode
		      ;; --- Minor Mode ---
		      nodejs-repl
		      exec-path-from-shell
		      ;; --- Themes ---
		      monokai-theme
		      ;; solarized-theme
		      ;;smex
		      popwin
		      reveal-in-osx-finder
		      ) "Default packages")


(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      org
		      ;; --- Auto-completion ---
		      company
		      ;; --- Better Editor ---
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      ;; --- Major Mode ---
		      js2-mode
		      ;; --- Minor Mode ---
		      nodejs-repl
		      exec-path-from-shell
		      ;; --- Themes ---
		      monokai-theme
		      ;; solarized-theme
		      ;;smex
		      popwin
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(global-hungry-delete-mode)
;;smartparens
;;(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;; 全局使用 smartparens-mode
(smartparens-global-mode t)


;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; config for js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; 开启全局补全
(global-company-mode t)

;; 加载 颜色
(load-theme 'monokai t)

;; 查找字符时 可以自动跳转到目标页
(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
