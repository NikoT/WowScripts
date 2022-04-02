#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F12:: 

WinMove, ahk_exe Wow.exe, ,0, 0 

WinMove, ahk_exe SndVol.exe, ,1920, 0 

return

F11:: 
return


F10::
return


F8::

Reload 

return


F9::

yuer := 0

Loop{

	yuerDR := A_TickCount - yuer
	;debug(yuerDR)
	if(yuerDR > 30*60*1000){
		send {2} 
		yuer := A_TickCount
	}
	func()

	Sleep, 1000
}

debug(string) {
    FileAppend %A_Now% : %string% `n ,log.txt
}


func(){
	debug("start")
	send {1} 
	Sleep, 1500

	; search area
	x1 = 300
	y1 = 200
	x2 = 1690
	y2 = 860
	color = 0x748372

	Loop, 100{
		PixelSearch, Px, Py, x1, y1, x2, y2, color, 1, Fast
		if ErrorLevel{
			if (A_Index > 99){
				;MsgBox, That color was not found in the specified region.
				debug("ERR : That color was not found in the specified region")

				return
			}
		}
		else{
			;MsgBox, A color within 0 shades of va1riation was found at X%Px% Y%Py%.

			break

		}
		Sleep, 20
	}


	;判断上钩
	StartTime := A_TickCount   ; 超过20秒退出
	Loop{

		ElapsedTime := A_TickCount - StartTime
		if (ElapsedTime > 20*1000) {
			debug("ERR : overtime")
			return
		}
		xm = 2044
		ym = 460
		colorm = 0xEaEAE7

		PixelGetColor, color, xm, ym
		;MsgBox, A color %color%
		;break
		if (color != colorm){
			Sleep, 200
			send {Click, %Px%, %Py%  }
			MouseMove, 200, 200
			break
		}

	}

	return


}



return