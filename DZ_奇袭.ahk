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
x = 718
y = 1620


MouseGetPos, MouseX, MouseY
PixelGetColor, color, x, y

clipboard := color
MsgBox The color at the current cursor position (%x% , %y%) is %color%.

return


F10::
PixelSearch, Px, Py, 908, 0, 1070, 116, 0x130f65, 0, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox, A color within 0 shades of variation was found at X%Px% Y%Py%.




~RButton & WheelDown::
~RButton & WheelUp::

x = 718
y = 1620

skillColor1 = 0xB7BABF ; 死亡标记
skillColor2 = 0x21BAEF ; 切割
skillColor3 = 0xB79463 ; baixuezhiren
skillColor4 = 0x7A7488 ; 暗影打击
skillColor5 = 0xADEBC6 ; 暗影之舞
skillColor6 = 0x53526C ; 狂热鞭笞
skillColor7 = 0xFF9EFF ; 死亡fuji
skillColor8 = 0xF4E3D2 ; 申斥
skillColor9 = 0x000000 ; 割裂
skillColor10 = 0x080C10 ; 刺骨
skillColor11 = 0x0D0D10 ; beici  youanzhiren
skillColor12 = 0x521808 ;影分身

PixelGetColor, color, x, y

if (color = skillColor1){
	send {[}
}else if (color = skillColor2){
	send {o}
}else if (color = skillColor3){
	send {3}
}else if (color = skillColor4){
	send {1}
}else if (color = skillColor5){
	send {]}
}else if (color = skillColor6){
	send {4}
}else if (color = skillColor7){
	send {p}
}else if (color = skillColor8){
	send {2}
}else if (color = skillColor9){
	send {q}
}else if (color = skillColor10){
	send {e}
}else if (color = skillColor11){
	send {r}
}else if (color = skillColor12){
	send {5}
}else{
	
}



return



F8:: 
Reload 
return