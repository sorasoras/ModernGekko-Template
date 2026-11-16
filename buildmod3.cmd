@echo off
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
set "PATH=C:\Strawberry\c\bin;%PATH%"
cd /d E:\Games\wii-decomp\tools_ext\ModernGekko-Port
cmake --build "C:\mgo\RUFEMV\6257218c1bd7c86c648999d0510fed5c7b5ac341f9805fade5505013c99cae11-6acf3a20c4f2a9f8\module-build" -j 4
