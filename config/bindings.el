;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

;; General

(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "M-;") 'execute-extended-command)
(define-key my-keys-minor-mode-map (kbd "C-;") ctl-x-map)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

;; Unset key bindings from minibuffer
(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))

;; Speedbar

(define-key global-map (kbd "C-c n t") 'sr-speedbar-toggle)

;; Mingus

(define-key global-map (kbd "C-c m p") 'mingus)

;; Edit server

(define-key global-map (kbd "C-c C-s") 'edit-server-done)

;;;;; Cider

;; Jump to definition

(define-key cider-mode-map (kbd "C-c C-j") 'cider-jump)
