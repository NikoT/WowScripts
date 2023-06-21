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
return

F8::
Reload
return


~RButton & WheelDown::
~RButton & WheelUp::

x = 718
y = 1620

skillColor1 = 0x3B7512 ; zhenqibo
skillColor2 = 0x62821B ; guchenjiu
skillColor3 = 0xB3B4AA ; ti
skillColor4 = 0x454065 ; tou
skillColor5 = 0x005A93 ; huo
skillColor6 = 0x4F8108 ; jifengbiyu
skillColor7 = 0x081421 ; baozhajiutong
skillColor8 = 0x004BE7 ; ti sheng

skillColor9 = 0x101808 ; menghuzhang

skillColor10 = 0x1018FF ; lunhui

PixelGetColor, color, x, y

if (color = skillColor1){
	send {=}
}else if (color = skillColor2){
	send {-}
}else if (color = skillColor3){
	send {0}
}else if (color = skillColor4){
	send {9}
}else if (color = skillColor5){
	send {8}
}else if (color = skillColor6){
	send {7}
}else if (color = skillColor7){
	send {6}
}else if (color = skillColor8){
	send {5}
}else if (color = skillColor9){
	send {o}
}else if (color = skillColor10){
	send {p}
}else{
	
}



return


