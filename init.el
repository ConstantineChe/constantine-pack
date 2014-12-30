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

;;;; Edit server

(when (daemonp)
  (live-load-config-file "edit-server.el")
  (require 'edit-server)
     (edit-server-start))

;;;; Sonic Pi

;; Load osc
(live-add-pack-lib "osc")

(add-to-list 'load-path "~/.live-packs/constantine-pack/lib/sonic-pi.el/")
(require 'sonic-pi)


;; add hook
(add-hook 'sonic-pi-mode-hook
          (lambda ()
            (setq sonic-pi-path "~/sonic-pi/")
                        (define-key ruby-mode-map "\C-c\C-b" 'sonic-pi-stop-all)
            ))

;;;; Navigation

;; Speedbar

(require 'sr-speedbar)

;; Speedbar goes left
(setq sr-speedbar-right-side nil)
;; Show all files
(setq speedbar-show-unknown-files t)
