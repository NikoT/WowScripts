#Requires AutoHotkey v2.0

F8::Reload 

F7::{

}

F9::{

    SetTimer jump, 50000

    Loop{

        paidui()
        if goin()==0 {
            continue
        }
        if goout()==0 {
            continue
        }
      
        Sleep 10000
    }

}



debug(string) {
    FileAppend  A_Now " : " string "`n", "log.txt"
}


jump(){
    Send "{Space}"
} 

paidui(){
    debug("paidui ")
    Send "{h}"
    Sleep 1000
    Send "{Click 160 324}"
    Sleep 1000
    Send "{Click 363 883}"
    Sleep 1000
    Send "{Click 120 345}"
    Sleep 1000
    Send "{Click 363 883}"
    Sleep 1000
    Send "{h}"
}


goin(){
    debug("wait in ")
    StartTime := A_TickCount   ; 超过X秒退出
    Loop{
        ElapsedTime := A_TickCount - StartTime
        if (ElapsedTime > 5*60*1000) {
            debug("ERR : overtime")
            return 0
        }
        xm := 1080
        ym := 323
        colorm := 0x760200
        color := PixelGetColor(xm, ym)
        if (color == colorm){
            debug("goin ")
            Click xm, ym
            return 1
        }
        Sleep 1000
    }
}


goout(){
    debug("wait out  ")
    StartTime := A_TickCount   ; 超过X秒退出
    Loop{ 
        ElapsedTime := A_TickCount - StartTime
        if (ElapsedTime > 35*60*1000) { ;战歌能打30分钟..
            debug("ERR : overtime")
            return 0
        }

        ;dead release
        x1 := 1230
        y1 := 308
        color1 := 0xffd100
        if ( PixelGetColor(x1, y1) == 0xffd100){
            Click x1, y1
            MouseMove 100, 100 ;移开
        }

        xm := 1180
        ym := 1000
        colorm := 0x5d0100
        color := PixelGetColor(xm, ym)
        if (color == colorm){
            Click xm, ym
            debug("go out")
            return 1
        }
        Sleep 1000
    }


}