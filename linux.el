; (set-default-font "-*-DejaVu Sans Mono-normal-r-normal-*-14-*-*-*-*-*-utf-8")

;;; Slime (from clbuild)

;; possibly controversial as a global default, but shipping a lisp
;; that dies trying to talk to slime is stupid, so:
(set-language-environment "UTF-8")
(setq slime-net-coding-system 'utf-8-unix)

;; load slime:
;; (setq load-path (cons "/home/jedrek/lisp/clbuild/source/slime" load-path))
;; (setq load-path (cons "/home/jedrek/lisp/clbuild/source/slime/contrib" load-path))
;; (setq slime-backend "/home/jedrek/lisp/clbuild/.swank-loader.lisp")
;; (load "/home/jedrek/lisp/clbuild/source/slime/slime")
;; (setq inferior-lisp-program "/home/jedrek/lisp/clbuild/clbuild lisp"
;;       lisp-indent-function 'common-lisp-indent-function
;;       slime-complete-symbol-function 'slime-fuzzy-complete-symbol
;;       common-lisp-hyperspec-root "file:///home/jedrek/lisp/HyperSpec/")
;; (setq slime-use-autodoc-mode nil)
;; (slime-setup '(slime-fancy slime-tramp slime-asdf))
;; (slime-require :swank-listener-hooks)
