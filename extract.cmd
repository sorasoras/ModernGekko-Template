@echo off
set "PATH=%~dp0lib\DolRecomp\extern\wit\bin;%PATH%"
cd /d %~dp0
lib\DolRecomp\build\dolrecomp.exe extract "E:\Games\wii-decomp\dtk-template\orig\RUFEMV\game.iso" extracted\game
