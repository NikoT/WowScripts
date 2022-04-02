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
PixelSearch, Px, Py, 908, 0, 1070, 116, 0x130f65, 0, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox, A color within 0 shades of variation was found at X%Px% Y%Py%.




~RButton & WheelDown::
~RButton & WheelUp::

x = 2138
y = 1136

skillColor1 = 0x000041 ; xielve
skillColor2 = 0x080889 ; sisui
skillColor3 = 0x080810 ; gelie
skillColor4 = 0x130f65 ; xiongmengsiyao
skillColor5 = 0x30adf3 ; menghuzhinu
skillColor6 = 0x161718 ; tongji
skillColor7 = 0x080808 ; hengsao
skillColor8 = 0x343564 ; yuanshizhinu
skillColor9 = 0x888b82 ; yemanhuikan
skillColor10 = 0x2115b0 ; yexingkuangluan

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