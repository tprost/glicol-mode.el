(Given "^mark is inactive by default$"
       (lambda ()
         (setq set-mark-default-inactive t)))

(When "^I visit \"\\([^\"]+\\)\"$"
  (lambda (filename)
    (find-file (expand-file-name (concat "fixtures/" filename) glicol-mode-test-path))
    (font-lock-mode 1)   
    (font-lock-ensure)
    (message "Current major mode: %s" major-mode)))

(Then "^I should be in glicol-mode$"
  (lambda ()
    (should (eq major-mode 'glicol-mode))))

(Then "^I should see the following faces:$"
  (lambda (faces-table)
    (let ((faces (->> faces-table (cdr) (mapcar #'car))))
      (save-excursion
        (goto-char (point-min))
        (dolist (face faces)          
          (search-forward-regexp face)          
          (let* ((start (match-beginning 0))
                 (end (match-end 0))                 
                 (expected-face (intern (cadr (assoc face faces-table))))
                 (actual-face (get-text-property (- end 1) 'face)))
            (should (eq actual-face expected-face))))))))
