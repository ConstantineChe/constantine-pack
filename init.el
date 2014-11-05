;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;;;;; Configs

;; Load bindings config
(live-load-config-file "bindings.el")
;; Load secrets
(live-load-config-file "secrets.el")

;;;;; Libs

(live-add-pack-lib "cider-nrepl")

;; Circe (IRC)
(live-add-pack-lib "circe/lisp")
;; Mingus (mpd)
(live-add-pack-lib "mingus")
;; Org-mode
(live-add-pack-lib "org-mode/lisp")

(require 'mingus)

;;;;; IRC

(autoload 'circe "circe" "Connect to an IRC server" t)

;; connect to irc
(defun irc ()
  "start irc client"
   (interactive)
   (circe "Bitlbee")
     (save-window-excursion
       (sleep-for 1)
       (set-buffer "localhost:6667")
       (with-circe-server-buffer
	 (biden)))
     (switch-to-buffer "&bitlbee"))

;; bitlbee identify
(defun biden ()
  "bitlebee identify"
  (interactive)
  (set-buffer "&bitlbee")
  (circe-server-send
   (format "PRIVMSG &bitlbee :identify %s"
	   bitlbee-passwd)))

;;;; Navigation

;; Speedbar

(require 'sr-speedbar)

;; Speedbar goes left
(setq sr-speedbar-right-side nil)
;; Show all files
(setq speedbar-show-unknown-files t)
