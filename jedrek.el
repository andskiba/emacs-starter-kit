;; Add vendor dir where all packages that are not in ESK are
(add-to-list 'load-path (concat dotfiles-dir "/vendor"))

;; use Unix line endings by default
(setq default-buffer-file-coding-system 'unix) 

(setq browse-url-generic-program "firefox"
      browse-url-browser-function 'browse-url-generic)

(column-number-mode t)
(menu-bar-mode t)
(setq tab-width 4)

;; (autoload 'paredit-mode "paredit"
;;   "Minor mode for pseudo-structurally editing Lisp code."
;;   t)

;; (autoload 'markdown-mode "markdown-mode.el"
;;   "Major mode for editing Markdown files"
;;   t)
;; (add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;;; Some keybindings
(global-set-key [f10]  'start-kbd-macro)
(global-set-key [f11]  'end-kbd-macro)
(global-set-key [f12]  'call-last-kbd-macro)

;;; Color Theme
(add-to-list 'load-path (concat  dotfiles-dir "/vendor/color-theme"))
(require 'color-theme)
(color-theme-initialize)
;(color-theme-charcoal-black)

;;; YetAnotherSinppet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

;;; C# mode
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;;; Yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;;; Setup php-mode indentation
(defun wicked/php-mode-init ()
  "Set some buffer-local variables."
  (setq case-fold-search t)
  (setq indent-tabs-mode nil)
  (setq fill-column 78)
  (setq c-basic-offset 2)
  (c-set-offset 'arglist-cont 0)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'case-label 2)
  (c-set-offset 'arglist-close 0))
(add-hook 'php-mode-hook 'wicked/php-mode-init)

;;; org mode
(add-to-list 'load-path (concat dotfiles-dir "/vendor/org-mode/lisp"))
(add-to-list 'load-path (concat dotfiles-dir "/vendor/org-mode/contrib/lisp"))
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)"  "|"
         "DONE(d)" "CANCELLED(c)" "DEFERRED(f)")))
(setq org-tag-alist
      '(("Work" . ?w) ("project" . ?p) ("programming" . ?g)
        ("reading" . ?r) ("school" . ?s)))
(setq org-log-done 'time)
(setq org-hide-leading-stars t)
(setq org-startup-folded t)

;;; ActionScript mode
(add-to-list 'load-path (concat dotfiles-dir "/vendor/flyparse-mode"))
(require 'flyparse-mode)

(add-to-list 'load-path (concat dotfiles-dir "/vendor/as3-mode"))
(require 'as3-mode)
(add-to-list 'auto-mode-alist '("\\.as\\'" . as3-mode))

;; Flyspell config
(ispell-change-dictionary "english" t)
(setq-default ispell-program-name "aspell")

;; CEDET - Merged into Emacs 23.2
(semantic-mode 1)
(setq global-semantic-decoration-mode t
      global-semantic-highlight-func-mode t
      global-semantic-stickyfunc-mode t)

;; ECB
(add-to-list 'load-path (concat dotfiles-dir "/vendor/ecb"))
(require 'ecb)
(require 'ecb-autoloads)

(setq ecb-options-version "2.40"
      ecb-tip-of-the-day nil)


;; Mercurial
(require 'mercurial)

;; NXhtml mode
(load (concat dotfiles-dir "vendor/nxhtml/autostart"))
