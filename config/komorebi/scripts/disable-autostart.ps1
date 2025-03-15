[System.Environment]::SetEnvironmentVariable("KOMOREBI_CONFIG_HOME", $null, "User")
[System.Environment]::SetEnvironmentVariable("WHKD_CONFIG_HOME", $null, "User")

komorebic stop --whkd
komorebic disable-autostart

yasbc stop
yasbc disable-autostart
