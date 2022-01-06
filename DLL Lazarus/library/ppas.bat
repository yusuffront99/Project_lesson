@echo off
SET THEFILE=D:\SEMESTER 5\Visual_3\Project_lesson\DLL Lazarus\library\belajar.dll
echo Linking %THEFILE%
C:\dev\lazarus202_32bit\fpc\3.0.4\bin\i386-win32\ld.exe -b pei-i386 -m i386pe  --gc-sections  -s --dll  --entry _DLLMainCRTStartup   --base-file base.$$$ -o "D:\SEMESTER 5\Visual_3\Project_lesson\DLL Lazarus\library\belajar.dll" "D:\SEMESTER 5\Visual_3\Project_lesson\DLL Lazarus\library\link.res"
if errorlevel 1 goto linkend
C:\dev\lazarus202_32bit\fpc\3.0.4\bin\i386-win32\dlltool.exe -S C:\dev\lazarus202_32bit\fpc\3.0.4\bin\i386-win32\as.exe -D "D:\SEMESTER 5\Visual_3\Project_lesson\DLL Lazarus\library\belajar.dll" -e exp.$$$ --base-file base.$$$ 
if errorlevel 1 goto linkend
C:\dev\lazarus202_32bit\fpc\3.0.4\bin\i386-win32\ld.exe -b pei-i386 -m i386pe  -s --dll  --entry _DLLMainCRTStartup   -o "D:\SEMESTER 5\Visual_3\Project_lesson\DLL Lazarus\library\belajar.dll" "D:\SEMESTER 5\Visual_3\Project_lesson\DLL Lazarus\library\link.res" exp.$$$
if errorlevel 1 goto linkend
C:\dev\lazarus202_32bit\fpc\3.0.4\bin\i386-win32\postw32.exe --subsystem console --input "D:\SEMESTER 5\Visual_3\Project_lesson\DLL Lazarus\library\belajar.dll" --stack 16777216
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
