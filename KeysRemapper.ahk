; Remaps are suspended by default
Suspend On
Menu, Tray, Icon, .\icons\suspended.ico , 1

; Press CapsLock to toggle remaps
~CapsLock::
	Suspend  ; Mark this handler as not suspending
	
	GetKeyState, state, CapsLock, T
	if state = D
	{
		Suspend, Off
		Menu, Tray, Icon, .\icons\active.ico , 1
	}
	else 
	{
		Suspend, On
		Menu, Tray, Icon, .\icons\suspended.ico , 1
	}
return

; Remaps
k::Up
h::Left
j::Down
l::Right
u::PgUp
n::PgDn
i::Home
m::End
o::Del
p::Backspace
