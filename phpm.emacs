(defun php-manual-lookup ()
  "Shows short documentation for the word at the point."
  (interactive)
  (let ((word (current-word t))
        (buffername "*phpm*"))
    (when (get-buffer buffername)
      (kill-buffer buffername))
    (save-excursion
      (pop-to-buffer buffername)
      (shell-command (format "phpm %s"
                             (shell-quote-argument word)) buffername)
      (other-window 1))))
(global-set-key '[f4] 'php-manual-lookup)
