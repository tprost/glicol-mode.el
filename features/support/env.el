(let* ((current-directory (file-name-directory load-file-name))
       (features-directory (expand-file-name ".." current-directory))
       (project-directory (expand-file-name ".." features-directory)))
  (setq glicol-mode-root-path project-directory))

(add-to-list 'load-path glicol-mode-root-path)
;; (require 'f)

;; (defvar glicol-mode-test-path
;;   (f-dirname (f-this-file)))

;; (defvar glicol-mode-root-path
;;   (f-parent glicol-mode-test-path))

;; (add-to-list 'load-path glicol-mode-root-path)

;; (require 'glicol-mode)
;; (require 'espuds)
;; (require 'ert)
(require 'glicol-mode)
(require 'espuds)
(require 'ert)

;; (Setup
;;  ;; Before anything has run
;;  )

(Before
 ;; Before each scenario is run
 (switch-to-buffer
  (get-buffer-create "*glicol-mode-tests*"))
 (erase-buffer)
 (transient-mark-mode 1)
 (cua-mode 0)
 (setq set-mark-default-inactive nil)
 (deactivate-mark))

(After
 ;; After each scenario is run
 )

;; (Teardown
;;  ;; After when everything has been run
;;  )
