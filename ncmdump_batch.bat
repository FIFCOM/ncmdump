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
echo.      �����߻��ڿ�Դ��Ŀ:
echo.
echo.      https://github.com/anonymous5l/ncmdump
echo.
echo.      https://github.com/yoki123/ncmdump
echo.
echo.      https://github.com/FIFCOM/ncmdump
echo.
echo.      ʹ�÷���:
echo.
echo.      1.����������ڰ���.ncm�ļ����ļ�����
echo.
echo.      2.ѡ��ģʽ����ʼת��
echo.
echo.      �������ѡ��ת��ģʽ...
pause>nul
goto mode

:mode
cls
echo.
echo.      .NCM Dump for Batch - By FIFCOM
echo.   ___________________________________________________________
echo.
echo.
echo.      ��ѡ��ת��ģʽ:
echo.
echo.      1. ת��Ϊ.mp3 ��ɾ��.ncm�ļ�
echo.
echo.      2. ��ת��Ϊ.mp3 ��ɾ��.ncm�ļ�
echo.
set mode_select=0
Set /p mode_select=       ���������:

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
echo. ��ȫ��ת�����,��ɾ�������е�.ncm�ļ�
echo.
echo. ��������˳�����...
pause>nul
exit

:mode_2
cls
for /r %%i in (*.ncm) do (
kernel.exe "%%i"
)
echo.
echo. ��ȫ��ת�����
echo.
echo. ��������˳�����...
pause>nul
exit
