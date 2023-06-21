#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;--F12 get mouse color !
F12:: 
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY% ,RGB
MsgBox The color at the current cursor position (%MouseX% , %MouseY%) is %color%.
return

;--get positon color 
F11:: 
		x = 1968
		y = 577
		
MouseGetPos, MouseX, MouseY
PixelGetColor, color, x, y, RGB
MsgBox The color at the current cursor position (%x% , %y%) is %color%.
return




F9::

now = 0
queueTime = 0
waitTime = 0
gameNum = 0

flag = 0 ; 0 init  1 team  2 team ok 3 battle queue 4 goin 5 go out
Loop
{
	if (flag == 0){
		if(checkMember()<10){
			meetingStone()
		}
		flag = 1
	}else if(flag == 1){
		Send {o} ; kick offline
		if(checkMember()==10){
			flag = 2
			waitTime = 0
		}else if(checkMember()>10){
			Send {p} ; build new team
			flag = 0
		}else {
			meetingStone()
		}
	}else if(flag == 2){
		if(waitTime>3){
			Send {p} ;wrong ,build new team
			flag = 0
		}
		if(checkMember()==10){
			queueDur := A_TickCount - queueTime
			if(queueDur > 15*1000){
				ratedBattle()      
				waitTime++       				
				queueTime := A_TickCount
			}
			if(checkBattleStat() == 1){
				flag = 3
			}
		}else{
			flag = 0
		}

	}else if (flag = 3){
		if(checkMember()!=10){
			flag = 0
		}else{
			if (goinBattle() == 1){
				flag = 4
			}
		}
	}else if(flag == 4){
		if (outBattle() == 1){
			gameNum++
			flag = 5
		}
	}else if(flag == 5){
		if(gameNum<4){
			flag = 0
			Sleep, 15*1000
		}else {
			gameNum = 0
			Send {p} ; build new team
			flag = 0
		}

	}

	jump := A_TickCount - now
	if(jump > 20*1000){
		Send {Space}
		now := A_TickCount
	}

	Sleep, 2000
}



outBattle(){
	x4 = 1798
	y4 = 1442
	skillColor4 = 0x650102
	PixelGetColor, color4, x4, y4, RGB
	if (color4 = skillColor4){
		Send {Click, %x4%, %y4%  }
		debug("goooo oooout")
		return 1
	}else{
	 	return 0
	}
}

goinBattle(){
	x3 = 1968
	y3 = 577
	skillColor3 = 0x640101

	PixelGetColor, color3, x3, y3, RGB
	if (color3 = skillColor3){
		Send {Click, %x3%, %y3%  }
		debug("goooo in")

		return 1
	}else{
		return 0
	}
}

ratedBattle(){
debug("queue ratedBattle")
	Send {l}
	Sleep, 500
	Click, 459, 1112
	Sleep, 500
	Click, 289, 686
	Sleep, 500
	Click, 763, 911
	Sleep, 500
	Click, 876, 1060
	Sleep, 500
	Click, 1590, 258
	Sleep, 500
}


checkMember(){
	PixelGetColor, color, 0, 0,RGB
	if (color = 0xffffff){ 
	debug("group member 10")
		return 10
	}else if (color = 0x000000){
		return 11
	}else{
		return 9
	}
}

checkBattleStat(){
	PixelGetColor, color, 200, 0,RGB
	if (color = 0xffffff){ 
		return 1 ; queued
	}else{
		return 0 ; none
	}
}

updateMeeting(){
	PixelGetColor, color, 540, 0,RGB
	if (color = 0xff6800){ ; orange
		return 1
	}else{
		return 0
	}
}

meetingStone(){
debug("meeting stone")
	Send {5}
}



F8::

Reload 

return

F7::

outBattle()

return



debug(string) {
    FileAppend %A_Now% : %string% `n ,log.txt
}



return