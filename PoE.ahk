$`::
  Suspend
Return

+`::
  ExitApp
Return

+1::
  Send {Enter}
  Send /hideout
  Send {Enter}
Return

+2::
  Send {Enter}
  Send /delve
  Send {Enter}
Return

$e::
  {
    Random, l, 320, 355
    Random, k, 460, 500
    Random, j, %l%, %k%
    Send, e
    Sleep %j%
    Send, w
  }
return

$Xbutton1::
  Keys := "1,2,4,3,5"
  Sort, Keys, Random D,
  O := StrSplit(Keys, ",")
  Loop % O.MaxIndex()
    {
      V := O[A_Index]
      SendInput, %V%
      Random, FLow, 20,40
      Random, FHigh, 55,70
      Random, FDelay, %FLow%, %FHigh%
      Sleep, %FDelay%
    }
Return
