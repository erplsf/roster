(with-temp-buffer
  (ledger-exec-ledger (current-buffer) (current-buffer) "-f" "/tmp/roster.journal"  "accounts")
  (let ((accounts (s-lines (buffer-string))))
    (--map (message it) accounts)))
