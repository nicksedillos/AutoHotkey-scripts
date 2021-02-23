; Change Launch Media key to run YouTube Music progressive web app.
Launch_Media::
Run, "C:\Program Files\Google\Chrome Beta\Application\chrome_proxy.exe" --profile-directory=Default --app-id=cinhimbnkkaeohfgghhklpknlkffjgod --disable-audio-output-resampler --force-wave-audio --try-supported-channel-layouts
Return

; Change Email key to open Gmail in default browser.
Launch_Mail::
Run, https://mail.google.com/mail/u/0/#inbox
Return

; Assign a keyboard shortcut to pin a window always-on-top. (See: https://www.techjunkie.com/always-on-top-windows-10/)
^Space::
WinSet, AlwaysOnTop, Toggle, A
Return