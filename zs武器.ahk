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
PixelSearch, Px, Py, 2090, 1083, 2175, 1167, 0x02a8E3, 0, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox, A color within 0 shades of variation was found at X%Px% Y%Py%.






~RButton & WheelDown::
~RButton & WheelUp::

x = 2138
y = 1136
skillColor1 = 0xcb7f1d ; 旋风斩
skillColor2 = 0x848886 ; yazhi
skillColor3 = 0x02a8E3 ; HENGSAO
skillColor4 = 0x538BD0 ; ZHANSHA
skillColor5 = 0x020203 ;miezhan 0x000408 ; JUREN         
skillColor6 = 0x6B696B ; ZHISI
skillColor7 = 0xBDB6B5 ; ZHONGJI
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