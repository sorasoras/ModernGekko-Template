@echo off
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
set "PATH=C:\Strawberry\c\bin;%PATH%"
cd /d E:\Games\wii-decomp\tools_ext\ModernGekko-Port
make MODERNGEKKO_BUILD=msvc_build %*
