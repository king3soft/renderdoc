@echo off
set BUILD_DIR=build-android
if not exist %BUILD_DIR% mkdir %BUILD_DIR%
cd %BUILD_DIR%
cmake -DBUILD_ANDROID=On -DANDROID_ABI=armeabi-v7a -GNinja ..
if exist lib rd /s /q lib
ninja
cd ..
copy build-android\\bin\\org.renderdoc.renderdoccmd.arm32.apk .\\x64\\Development\\plugins\\android\\org.renderdoc.renderdoccmd.arm32.apk


set BUILD_DIR=build-android64
if not exist %BUILD_DIR% mkdir %BUILD_DIR%
cd %BUILD_DIR%
cmake -DBUILD_ANDROID=On -DANDROID_ABI=arm64-v8a -GNinja ..
if exist lib rd /s /q lib
ninja
cd ..
copy build-android64\\bin\\org.renderdoc.renderdoccmd.arm64.apk .\\x64\\Development\\plugins\\android\\org.renderdoc.renderdoccmd.arm64.apk


del /s *.vc.db
del /s *.tlog
del /s *.log
del /s *.idb
del /s *.pdb
del /s *.lastbuildstate
del /s *.ilk
del /s *.exp
del /s *.obj
del /s *.iobj
del /s *.ipch
del /s *.tlh
del /s *.obj.enc
del /s *.tli
del /s *.exp
del /s *.pch
del /s *.lib