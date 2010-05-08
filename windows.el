(require 'psvn)

(setq ange-ftp-ftp-program-name "d:/cygwin/bin/ftp.exe")
(setq find-program "d:/cygwin/bin/find.exe")

(set-default-font
 "-outline-Consolas-normal-r-normal-normal-14-97-96-96-c-*-utf-8")

(defun w32-maximize-frame ()
  "Maximize the current frame"
  (interactive)
  (w32-send-sys-command 61488))

(add-hook 'window-setup-hook 'w32-maximize-frame t)