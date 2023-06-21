#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




F7::

;SoundPlay *16

Gui, Add, Text,, Please enter your name:
Gui, Add, Edit, vName
Gui, Show
return

F8::


Reload 

return


v_Enable=0

`::

v_Enable:=!v_Enable	
If(v_Enable=0)	{
SetTimer, aaa, Off
}	ELSE	{	 
count = 0	 
SetTimer, aaa, On
}

aaa:
{
;TrayTip #1, count %count%

	if(Mod(count, 3) == 0 ){
		Send {2}
		Send {2}
	}

	if(Mod(count, 30) == 0){
		;Send {3}
	}


	if(Mod(count, 119) == 0){
		;Send {4}
	}

	count++
	Sleep 1000
	
}

Return



; ~ its key's native function will not be blocked
~t::

v_Enable := 0
SetTimer, aaa, Off



Return


