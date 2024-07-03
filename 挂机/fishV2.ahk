#Requires AutoHotkey v2.0


F12::{
    WinMove 0,0,,, "ahk_exe WowClassic.exe" ;怀旧服
    WinMove 1920,0,,, "ahk_exe SndVol.exe"
}



F8::Reload 



F9::{

    ;判断诱饵 
    yuer := 0
    Loop{
        yuerDR := A_TickCount - yuer
        ;debug(yuerDR)
        if(yuerDR > 30*60*1000){
            Send "{2}"  ;诱饵buff
            yuer := A_TickCount
        }
        fishing()
        Sleep 1000
    }
    
    debug(string) {
        FileAppend  A_Now " : " string "`n", "log.txt"
    }

    fishing(){
        debug("start")

        Send "{1}"  ; 下勾
        Sleep 1500

        ;区域搜索下勾点
        x1 := 750
        y1 := 70
        x2 := 1835
        y2 := 940
        color := 0xB52B13
        Loop {
            if PixelSearch(&Px, &Py, x1, y1, x2, y2, color, 20){
                ;MsgBox, A color within 0 shades of va1riation was found at X%Px% Y%Py%.
                p := "FIND: " Px "," Py
                debug(p)
                MouseMove Px, Py
                break
            }else{
                if (A_Index > 99){
                    ;MsgBox, That color was not found in the specified region.
                    debug("ERR : That color was not found in the specified region")
                    return
                }
            }
            Sleep 20
        }
    

        ;判断上钩
        StartTime := A_TickCount   ; 超过20秒退出
        Loop{
            ElapsedTime := A_TickCount - StartTime
            if (ElapsedTime > 20*1000) {
                debug("ERR : overtime")
                return
            }
            xm := 2018
            ym := 371
            colorm := 0xE7EAEA
            color := PixelGetColor(xm, ym)
            if (color != colorm){
                debug("GET!!!!! ")
                Sleep 200
                Click "right"
                MouseMove 200, 200
                break
            }
        }
	    return
    }


}


