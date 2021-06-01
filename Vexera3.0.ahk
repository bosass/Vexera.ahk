#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive vexera-commands - Discord
NumpadAdd::
Gui, Destroy
CoordMode, mouse, Screen
MouseGetPos, xpos, ypos 
xpos := (xpos - 180)
ypos := (ypos - 83)
Gui, +AlwaysOnTop
Gui, Font, s30
Gui, Show, w440 h40 x%xpos% y%ypos%
Gui, Add, Button, x0 y0 w40 h40 gjoin,✔️
Gui, Add, Button, x40 y0 w40 h40 gshuffle, 🔀
Gui, Add, Button, x80 y0 w40 h40 gback, ⏮
Gui, Add, Button, x120 y0 w40 h40 gplaypause, ⏯
Gui, Add, Button, x160 y0 w40 h40 gskip, ⏭
Gui, Add, Button, x240 y0 w40 h40 gqueue, 📜
Gui, Font, s14
Gui, Add, Edit, x200 y0 w40 h40 Number vq, 
Gui, Add, UpDown, Range0-100-100, 
Gui, Font, s30
Gui, Add, Button, x320 y0 w40 h40 gjump, 🦶
Gui, Font, s7
Gui, Add, Button, x300 y20 w20 h20 go, 1
Gui, Font, s14
Gui, Add, Button, x280 y20 w20 h20 gr, 🎲
Gui, Font, s7
Gui, Add, Edit, x280 y0 w40 h20 Number vj,
Gui, Add, UpDown, Range1-1000, 777
Gui, Font, s30
Gui, Add, Button, x360 y0 w40 h40 gnp, ℹ️
Gui, Add, Button, x400 y0 w40 h40 gstop, ❌
i := 0
return




join:
WinActivate #vexera-commands - Discord
Send, {+}join {Enter}
return

shuffle:
WinActivate #vexera-commands - Discord
Send, {+}shuffle {Enter}
return

queue:
WinActivate #vexera-commands - Discord
GuiControlGet, q
if (q == 0)
Send, {+}queue{Enter}
else 
Send, {+}queue %q%{Enter}
return

back:
WinActivate #vexera-commands - Discord
Send, {+}back {Enter}
return

skip:
WinActivate #vexera-commands - Discord
Send, {+}skip {Enter}
return

jump:
WinActivate #vexera-commands - Discord
GuiControlGet, j
Send, {+}jump %j%{Enter}
return

playpause:
WinActivate #vexera-commands - Discord

	if(i == 1)
{
		Send, {+}resume {Enter}
		i := 0
}
	else
{
		Send, {+}pause {Enter}
		i := 1 
}
	
return

np:
WinActivate #vexera-commands - Discord
Send, {+}np{Enter}
return

stop:
WinActivate #vexera-commands - Discord
Send, {+}stop{Enter}
return

o:
WinActivate #vexera-commands - Discord
Send, {+}jump 1{Enter}
return

r:
WinActivate #vexera-commands - Discord 
Random, rand, 1, 1000
Send, {+}jump %rand%{Enter}
return
