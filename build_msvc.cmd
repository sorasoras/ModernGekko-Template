@echo off
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
set "PATH=C:\Strawberry\c\bin;%PATH%"
cd /d E:\Games\wii-decomp\tools_ext\ModernGekko-Port
cmake -S lib/ModernGekko -B msvc_build -G Ninja -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF ^
  -DCMAKE_C_COMPILER=cl -DCMAKE_CXX_COMPILER=cl -DDOLRECOMP_ENABLE_LLVM=OFF > msvc_cfg.log 2>&1
if errorlevel 1 (echo CONFIG_FAILED & exit /b 1)
cmake --build msvc_build --target moderngekko-port -j 4 > msvc_build.log 2>&1
echo BUILD_EXIT=%errorlevel%
