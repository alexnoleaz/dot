$komorebiConfigPath = "$env:USERPROFILE\.config\komorebi"

[System.Environment]::SetEnvironmentVariable("KOMOREBI_CONFIG_HOME", $komorebiConfigPath, "User")
[System.Environment]::SetEnvironmentVariable("WHKD_CONFIG_HOME", "$komorebiConfigPath\scripts", "User")

komorebic quickstart
komorebic start --whkd
komorebic enable-autostart --whkd
