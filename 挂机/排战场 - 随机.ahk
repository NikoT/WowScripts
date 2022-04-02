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
func()

func(){

	begin = 0
	Loop
	{


		if(begin = 0){
			zhanchang()
			Sleep, 1000
			zhanchang()
			begin = 1
			debug("start") 

		}

		x1 = 1895
		y1 = 1138

		x2 = 1856
		y2 = 588
		
		x3 = 1835
		y3 = 621

		x4 = 2046
		y4 = 1589

		x5 = 1692
		y5 = 362


		skillColor1 = 0x08086b ; 就绪
		skillColor2 = 0x040467 ; 排队
		skillColor3 = 0x060667 ; 进战场
		skillColor4 = 0x000364 ; 出战场
		skillColor5 = 0x680000 ; 死亡释放


		PixelGetColor, color1, x1, y1
		PixelGetColor, color2, x2, y2
		PixelGetColor, color3, x3, y3
		PixelGetColor, color4, x4, y4
		PixelGetColor, color5, x5, y5

	;debug(color3)

		if (color1 = skillColor1){
			send {Click, %x1%, %y1%  }
			MouseMove, 0, 0

		}else if (color2 = skillColor2){
			send {Click, %x2%, %y2%  }
			MouseMove, 0, 0

		}else if (color3 = skillColor3){
			send {Click, %x3%, %y3%  }
			MouseMove, 0, 0
			debug("go in") 

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