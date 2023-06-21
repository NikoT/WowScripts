#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F12:: 
Reload 
return

F11:: 

	PixelGetColor, color, 2181, 2029
	MsgBox The color at the current cursor position is %color%.

return


F10::

return


F7::

	PixelGetColor, color, 1461, 1377
	MsgBox The color at the current cursor position is %color%.

return


F8::

Reload 

return


F9::

debug("Pet battle START!!!!!!!!!!!!!!!!")

Loop{

debug("Loop begin")

	StartTime := A_TickCount 

	pet1()
	npc()
	Sleep, 2000 ; change view
	fight()
	Sleep, 500 ; change view

	pet2()
	npc()
	Sleep, 2000 ; change view
	fight()
	Sleep, 500 ; change view

	pet3()
	npc()
	Sleep, 2000 ; change view
	fight()
	Sleep, 500 ; change view

	pet4()
	npc()
	Sleep, 2000 ; change view
	fight()
	Sleep, 500 ; change view

	pet5()
	npc()
	Sleep, 2000 ; change view
	fight()
	Sleep, 500 ; change view

	pet6()
	npc()
	Sleep, 2000 ; change view
	fight()
	Sleep, 500 ; change view


/* ============


	
	pet7()
	npc()
	Sleep, 2000 ; change view
	fight()
	Sleep, 500 ; change view


================
*/


	debug("loop end:")
	debug(A_Index)

	
	Loop{ ; wait until recovering the pets
		ElapsedTime := A_TickCount - StartTime
		if (ElapsedTime > 8*60*1000+2) {
			Sleep, 1000
			Send {y} ;/cast 复活战斗宠物
			break
		}
		Sleep, 1000
	}
	

	

}



inBattle(){
	PixelGetColor, color, 1461, 1377
	;MsgBox The color at the current cursor position is %color%.
	if(color = 0x29388c){
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

/*
	Loop, 30{
		send {w down}
		Sleep, 30
	}
	Send {w up}
*/

	send {l} ; target
	Sleep, 100
	send {t} ; 交互
	Sleep, 1000
	send {l} ; scrip

}

pet1(){
	send { k }
	Sleep, 500
	send {Click, 1111, 350  }
	Sleep, 500
	send {k  }   ;close
}

pet2(){
	send { k }
	Sleep, 500
	send {Click, 1111, 420  }
	Sleep, 500
	send {k  }   ;close
}

pet3(){
	send { k }
	Sleep, 500
	send {Click, 1111, 490  }
	Sleep, 500
	send {k  }   ;close
}

pet4(){
	send { k }
	Sleep, 500
	send {Click, 1111, 560  }
	Sleep, 500
	send {k  }   ;close
}

pet5(){
	send { k }
	Sleep, 500
	send {Click, 1111, 620  }
	Sleep, 500
	send {k  }   ;close
}


pet6(){
	send { k }
	Sleep, 500
	send {Click, 1111, 680  }
	Sleep, 500
	send {k  }   ;close
}

pet7(){
	send { k }
	Sleep, 500
	send {Click, 1111, 750  }
	Sleep, 500
	send {k  }   ;close
}


debug(string) {
    FileAppend %A_Now% : %string% `n ,log.txt
}




return