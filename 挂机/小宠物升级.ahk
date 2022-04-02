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


F7::

PixelGetColor, color, 2181, 2029
debug(color)

return


F8::

Reload 

return


F9::


Loop{

	StartTime := A_TickCount 

	pet1()
	npc()
	Sleep, 3000 ; change view
	fight()
	Sleep, 3000 ; change view

	pet2()
	npc()
	Sleep, 3000 ; change view
	fight()
	Sleep, 3000 ; change view

	pet3()
	npc()
	Sleep, 3000 ; change view
	fight()
	Sleep, 3000 ; change view

	pet4()
	npc()
	Sleep, 3000 ; change view
	fight()
	Sleep, 3000 ; change view

	pet5()
	npc()
	Sleep, 3000 ; change view
	fight()
	Sleep, 3000 ; change view

	debug("finisheddddddddddd:")
	debug(A_Index)

	Loop{
		ElapsedTime := A_TickCount - StartTime
		if (ElapsedTime > 8*60*1000) {
			break
		}
		Sleep, 1000
	}


	send {f2}

}



inBattle(){
	PixelGetColor, color, 2181, 2029

	if(color = 0x25387B){
		return 1
	}else{
		return 0
	}
}

fight(){
	Loop{
		if(inBattle()>0){
			Send {\}
		}else{
			break
		}
		Sleep, 1000
	}
}

npc(){

	Loop, 30{
		send {w down}
		Sleep, 30
	}
	Send {w up}

	send {Click, 2041, 965  }
	Sleep, 1000
	send {Click, 162, 498  }
}

pet1(){
	send {Click, 3652, 2122  }
	Sleep, 1000
	send {Click, 277, 1479  }
	Sleep, 1000
	send {Click, 1470, 465  }
	send {Click, 1723, 253  }   ;close
}

pet2(){
	send {Click, 3652, 2122  }
	Sleep, 1000
	send {Click, 277, 1479  }
	Sleep, 1000
	send {Click, 1470, 554  }
	send {Click, 1723, 253  }   ;close
}

pet3(){
	send {Click, 3652, 2122  }
	Sleep, 1000
	send {Click, 277, 1479  }
	Sleep, 1000
	send {Click, 1470, 656  }
	send {Click, 1723, 253  }   ;close
}

pet4(){
	send {Click, 3652, 2122  }
	Sleep, 1000
	send {Click, 277, 1479  }
	Sleep, 1000
	send {Click, 1470, 740  }
	send {Click, 1723, 253  }   ;close
}

pet5(){
	send {Click, 3652, 2122  }
	Sleep, 1000
	send {Click, 277, 1479  }
	Sleep, 1000
	send {Click, 1470, 822  }
	send {Click, 1723, 253  }   ;close
}


debug(string) {
    FileAppend %A_Now% : %string% `n ,log.txt
}




return