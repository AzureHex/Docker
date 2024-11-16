$()$(
  sh
  sudo apt-get install smartmontools
  smartctl --version
  systemctl start smartd
  systemctl enable smartd
  systemctl status smartd
)$()

$()$(
  admin | password12345
)$()
