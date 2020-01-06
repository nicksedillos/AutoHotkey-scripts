; Inputs the Enter key 500 times (with a 1 second cooldown after every 5) when the hotkey [CTRL] + [=] is entered.
^=::
Loop, 100 {
	Send, {Enter 5}
	Sleep, 1000
}
Return