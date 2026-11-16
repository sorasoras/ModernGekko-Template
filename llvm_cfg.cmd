@echo off
call "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
set "PATH=C:\Strawberry\c\bin;%PATH%"
cd /d E:\Games\wii-decomp\tools_ext\ModernGekko-Port
cmake -S lib/DolRecomp -B llvm_build -G Ninja -DCMAKE_BUILD_TYPE=Release -DDOLRECOMP_ENABLE_LLVM=ON -DLLVM_DIR="C:/Program Files/LLVM/lib/cmake/llvm"
