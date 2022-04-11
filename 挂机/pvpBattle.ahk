#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;F12 get color !
F12:: 
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position (%MouseX% , %MouseY%) is %color%.
return

F11:: 
		x = 1895
		y = 1138
		
MouseGetPos, MouseX, MouseY
PixelGetColor, color, x, y
MsgBox The color at the current cursor position (%x% , %y%) is %color%.
return


F10::
PixelSearch, Px, Py, 908, 0, 1070, 116, 0x130f65, 0, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox, A color within 0 shades of variation was found at X%Px% Y%Py%.
return


F9::

now = 0
queueTime = 0
waitTime = 0
gameNum = 0

flag = 0 ; 0初始 1组人 2组完 3排队 4进入 5出来
Loop
{
	debug(flag)
	if (flag = 0){
		send {o} ; /rl
		Sleep, 1000*8

		waitTime = 0
		meetingStone()
		flag = 1
	}else if(flag = 1){
		if(checkMember()==2){
			flag = 2
		}else{
			if(updateMeeting() == 0){
				flag = 0
			}
			
		}
	}else if(flag == 2){
		if(waitTime>3){
			leaveTeam()
			flag = 0
		}
		if(checkMember()==2){
			queueDur := A_TickCount - queueTime
			if(queueDur > 15*1000){
				ratedBattle()      
				waitTime++       				
				queueTime := A_TickCount
			}
				
			if(checkBattleStat() == 1){
				flag = 3
			}else{

			}
		}else{
			flag = 0
		}

	}else if (flag = 3){
	; 这里要加个保护 时间太久重置
		if(checkMember()!=2){
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
			flag = 2
			Sleep, 15*1000
		}else {
			if (leaveTeam() == 1){
				gameNum = 0
				flag = 0
			}
		}

	}

	jump := A_TickCount - now
	if(jump > 20*1000){
		send {Space}
		now := A_TickCount
	}

	Sleep, 2000
}


leaveTeam(){
	if (checkMember() != 3){
		send {p}
		return 1
	}else{
		return 0
	}
}

outBattle(){
	x4 = 2046
	y4 = 1589
	skillColor4 = 0x000364 ; 出战场
	PixelGetColor, color4, x4, y4
	if (color4 = skillColor4){
		send {Click, %x4%, %y4%  }
		return 1
	}else{
	 	return 0
	}
}

goinBattle(){
	x3 = 1968
	y3 = 577
	skillColor3 = 0x010164 ; 进战场
	PixelGetColor, color3, x3, y3
	if (color3 = skillColor3){
		send {Click, %x3%, %y3%  }
		return 1
	}else{
		return 0
	}
}

ratedBattle(){
	Sleep, 500
	Click, 3596, 2118
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
	if (color = 0xff000b){ ;red
		return 1
	}else if (color = 0x00ff21){ ; green
		return 2
	}else{
		return 3
	}
}

checkBattleStat(){
	PixelGetColor, color, 105, 0,RGB
	if (color = 0x00ff21){ ; green
		return 1
	}else{
		return 0
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
	Sleep, 500
	Click, 3596, 2118
	Sleep, 500
	Click, 444, 1123
	Sleep, 500
	Click, 297, 852
	Sleep, 500
	Click, 609, 726
	Sleep, 500
	Click, 620, 1058
	Sleep, 500
	Click, 1056, 458
	Sleep, 500
	SendInput 打脚本 卡空 活人进组  ; title input	
	Sleep, 500
	Click, 1037, 1061
	Sleep, 500
	Click, 1142, 252  ;close
	Sleep, 500
}



F8::

Reload 

return

F7::
ratedBattle()

return



debug(string) {
    FileAppend %A_Now% : %string% `n ,log.txt
}



return