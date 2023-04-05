;;; glicol-mode.el --- A major mode for the Glicol music language -*- lexical-binding: t; -*-

;; Author: tprost <tprost@users.noreply.github.com>
;; URL: https://github.com/tprost/glicol-mode
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.2"))

;;; Commentary:

;; Glicol mode provides syntax highlighting, indentation and
;; other features for the Glicol computer music language.

;;; Code:

(require 'rx)
(require 'font-lock)

(defvar glicol-font-lock-keywords
  (let* (;; Define regex patterns for each element
         (x-keywords-regexp ">>")
         ;; (x-constants-regexp "\\b\\(_?[a-zA-Z0-9]+\\)")
         (sdasda-regexp "~[[:alpha:]]+"))

    `((,x-keywords-regexp . font-lock-keyword-face)
      (,"~[[:alpha:]]+" . font-lock-variable-name-face))))
      ;;(,x-constants-regexp . font-lock-constant-face))))

(define-derived-mode glicol-mode prog-mode "Glicol"
  "Major mode for editing Glicol music language files."

  ;; Code for syntax highlighting
  (setq font-lock-defaults '((glicol-font-lock-keywords))))

(add-to-list 'auto-mode-alist '("\\.glicol\\'" . glicol-mode))

(provide 'glicol-mode)

;;; glicol-mode.el ends here
