#NoEnv
#Persistent
#Requires AutoHotkey v1.1.37

SetTimer, CheckMsiexec, 1000
systemVersion := "0.1.2"

Menu, Tray, NoStandard 
Menu, Tray, Add, Kill Installation, KillMsiexec 
Menu, Tray, Add, About, AboutSystem 
Menu, Tray, Add 
Menu, Tray, Add, Exit, ExitSystem 

CheckMsiexec:
Process, Exist, msiexec.exe
If (ErrorLevel) {
    Menu, Tray, Icon, work.ico, , 1
    Menu, Tray, Tip, An installation is running.
    Menu, Tray, Enable, Kill Installation
} else {
    Menu, Tray, Icon, none.ico, , 1
    Menu, Tray, Tip, No installation works.
    Menu, Tray, Disable, Kill Installation
}
return

KillMsiexec:
  try {
     Run *RunAs cmd.exe /c taskkill /f /im msiexec.exe, , Hide
  } catch {
     MsgBox, 16, Access Denied, The transaction was canceled by the user.
  }
return

AboutSystem:
  
   IfWinExist, About 
   {
       WinActivate, About
       return
   }
   MsgBox, 64, About, IsMsiExecWorking %systemVersion% - Copyright (c) 2026 Kagansoft Corporation
return

ExitSystem:
  ExitApp 
return


