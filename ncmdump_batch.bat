@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: No
REM Companyname: 
REM Productname: 
REM Filedescription: 
REM Copyrights: 
REM Trademarks: 
REM Originalname: 
REM Comments: 
REM Productversion:  0. 0. 0. 0
REM Fileversion:  0. 0. 0. 0
REM Internalname: 
REM ExeType: console
REM Architecture: x64
REM Appicon: 
REM AdministratorManifest: No
REM Embeddedfile: E:\DevelopFiles\ncmdump\kernel.exe
REM  QBFC Project Options End
@ECHO ON
@echo off
setlocal ENABLEDELAYEDEXPANSION
title .NCM Dump for Batch - By FIFCOM
mode con: cols=65 lines=25
color 8b

:note
cls
echo.
echo.      .NCM Dump for Batch - By FIFCOM
echo.   ___________________________________________________________
echo.
echo.
echo.      本工具基于开源项目:
echo.
echo.      https://github.com/anonymous5l/ncmdump
echo.
echo.      https://github.com/yoki123/ncmdump
echo.
echo.      https://github.com/FIFCOM/ncmdump
echo.
echo.      使用方法:
echo.
echo.      1.将本程序放在包含.ncm文件的文件夹下
echo.
echo.      2.选择模式并开始转换
echo.
echo.      按任意键选择转换模式...
pause>nul
goto mode

:mode
cls
echo.
echo.      .NCM Dump for Batch - By FIFCOM
echo.   ___________________________________________________________
echo.
echo.
echo.      请选择转换模式:
echo.
echo.      1. 转换为.mp3 并删除.ncm文件
echo.
echo.      2. 仅转换为.mp3 不删除.ncm文件
echo.
set mode_select=0
Set /p mode_select=       请输入序号:

If "%mode_select%"=="1" goto mode_1
If "%mode_select%"=="2" goto mode_2
If "%mode_select%"=="0" goto mode
goto mode

:mode_1
cls
for /r %%i in (*.ncm) do (
kernel.exe "%%i" && del "%%i"
)
echo.
echo. 已全部转换完成,并删除了所有的.ncm文件
echo.
echo. 按任意键退出程序...
pause>nul
exit

:mode_2
cls
for /r %%i in (*.ncm) do (
kernel.exe "%%i"
)
echo.
echo. 已全部转换完成
echo.
echo. 按任意键退出程序...
pause>nul
exit
