; Change Launch Media key to run Google Play Music mini-player.
Launch_Media::
Run, "C:\Program Files (x86)\Google\Chrome Beta\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=fahmaaghhglfmonjliepjlchgpgfmobi
Return

; Change Email key to open Gmail in default browser.
Launch_Mail::
Run, https://mail.google.com/mail/u/0/#inbox
Return

; Assign a keyboard shortcut to pin a window always-on-top. (See: https://www.techjunkie.com/always-on-top-windows-10/)
^Space::
WinSet, AlwaysOnTop, Toggle, A
Return