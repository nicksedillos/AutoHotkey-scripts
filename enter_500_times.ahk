; When the hotkey [CTRL] + [=] is entered, presses down the Enter key for a random duration of 0.010 to 0.250 seconds 500 times (with a cooldown in between of random duration from 0.010 to 1.000 seconds). Uses a random number as the seed for the next iteration.
^=::
Loop, 500 {
	Send, {Enter down}
	Sleep, % GenerateRandom(10, 250)
	Send, {Enter up}
	Sleep, % GenerateRandom(10, 1000)
	
	GenerateRandom(Min, Max){
		Random, RandomNumber, %Min%, %Max%
		Return %RandomNumber%
		Random, , %RandomNumber%
	}
}
Return