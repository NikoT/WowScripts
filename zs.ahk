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
x = 2138
y = 1136

MouseGetPos, MouseX, MouseY
PixelGetColor, color, x, y
MsgBox The color at the current cursor position (%x% , %y%) is %color%.
return

F10::
PixelSearch, Px, Py, 908, 0, 1070, 116, 0x081E60, 0, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox, A color within 0 shades of variation was found at X%Px% Y%Py%.





~RButton & WheelDown::
~RButton & WheelUp::

x = 2138
y = 1136
skillColor1 = 0xcb7f1d ; 旋风斩
skillColor2 = 0x4279ff ; 破城者
skillColor3 = 0x000B31 ; BAONU
skillColor4 = 0x538BD0 ; ZHANSHA
skillColor5 = 0x21244d ;panzui          ;;;0xD1EE39 ;  FAYE
skillColor6 = 0x081E60 ; SHIXUE
skillColor7 = 0x625C6A ; NUJI
skillColor8 = 0x6F565E ; JIANSHENGFENGBAO
skillColor9 = 0x868986 ;chongfeng
;skillColor10 = 0x232928

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
	send {\}
}else if (color = skillColor9){
	send {]}
}else if (color = skillColor10){
	send {[}
}else{
	
}



return