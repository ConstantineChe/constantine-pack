;;; osc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (osc-make-server osc-send-message osc-make-client)
;;;;;;  "osc" "osc.el" (21665 41045 565600 844000))
;;; Generated autoloads from osc.el

(autoload 'osc-make-client "osc" "\
Create an OSC client process which talks to HOST and PORT.

\(fn HOST PORT)" nil nil)

(autoload 'osc-send-message "osc" "\
Send an OSC message from CLIENT to the specified PATH with ARGS.

\(fn CLIENT PATH &rest ARGS)" nil nil)

(autoload 'osc-make-server "osc" "\
Create an OSC server which listens on HOST and PORT.
DEFAULT-HANDLER is a function with arguments (path &rest args) which is called
when a new OSC message arrives.  See `osc-server-set-handler' for more
fine grained control.
A process object is returned which can be dicarded with `delete-process'.

\(fn HOST PORT DEFAULT-HANDLER)" nil nil)

;;;***

;;;### (autoloads nil nil ("osc-pkg.el") (21665 41045 590369 581000))

;;;***

(provide 'osc-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; osc-autoloads.el ends here
