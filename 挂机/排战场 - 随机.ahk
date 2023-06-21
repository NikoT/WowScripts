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
		x = 1800
		y = 1440
		
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
func()

func(){

	begin = 0
	battleTime = 0
	queueTime = 0
	Loop
	{

		if(begin = 0){
			zhanchang()
			Sleep, 1000
			zhanchang()
			begin = 1
			queueTime := A_TickCount
			debug("start") 
		}

		x2 = 1856
		y2 = 588
		
		x3 = 1835
		y3 = 621

		x4 = 1800
		y4 = 1440

		x5 = 1692
		y5 = 362


		skillColor2 = 0x040467 ; 排队
		skillColor3 = 0x060667 ; 进战场
		skillColor4 = 0x020264 ; 出战场
		skillColor5 = 0x680000 ; 死亡释放


		PixelGetColor, color2, x2, y2
		PixelGetColor, color3, x3, y3
		PixelGetColor, color4, x4, y4
		PixelGetColor, color5, x5, y5

		if (color2 = skillColor2){
			send {Click, %x2%, %y2%  }
			MouseMove, 0, 0

		}else if (color3 = skillColor3){
			send {Click, %x3%, %y3%  }
			MouseMove, 0, 0
			begin = 2
			debug("go in") 
			battleTime := A_TickCount

		}else if (color4 = skillColor4){
			send {Click, %x4%, %y4%  }
			MouseMove, 0, 0
			begin = 0
			Sleep, 10000
			debug("end") 

		}else if (color5 = skillColor5){
			send {Click, %x5%, %y5%  }
			MouseMove, 0, 0
		}else {

		}

		static jump :=0 
		jump +=1 
		v := Mod(jump, 20)
		if (v = 0){
			send {Space}
		}


		if(begin == 1){ ; 排队太久
			queueDuration := A_TickCount - queueTime
			if(queueDuration > 15*60*1000){
				begin = 0
				Sleep, 10000
				debug("re start") 
			}
		}

		if(begin == 2){ ; 战场被踢 超时保护
			battleDuration := A_TickCount - battleTime
			if(battleDuration > 20*60*1000){
				begin = 0
				Sleep, 10000
				debug("no end") 
			}
		}

		Sleep, 1000

	}


}


zhanchang(){
	send {v}
	Sleep, 1000
	send {Click, 438, 1118  }
	Sleep, 1000
	send {Click, 691, 525  }
	Sleep, 1000
	send {Click, 902, 1065  }
}


F8::

Reload 

return

F7::

zhanchang()

return



debug(string) {
    FileAppend %A_Now% : %string% `n ,log.txt
}



return