@echo off
set BUILD_DIR=build-android
if not exist %BUILD_DIR% mkdir %BUILD_DIR%
cd %BUILD_DIR%
cmake -DBUILD_ANDROID=On -DANDROID_ABI=armeabi-v7a -GNinja ..
if exist lib rd /s /q lib
ninja
cd ..

mkdir x64\\Development\\plugins\\android
copy build-android\\bin\\org.renderdoc.renderdoccmd.arm32.apk .\\x64\\Development\\plugins\\android\\org.renderdoc.renderdoccmd.arm32.apk


set BUILD_DIR=build-android64
if not exist %BUILD_DIR% mkdir %BUILD_DIR%
cd %BUILD_DIR%
cmake -DBUILD_ANDROID=On -DANDROID_ABI=arm64-v8a -GNinja ..
if exist lib rd /s /q lib
ninja
cd ..
copy build-android64\\bin\\org.renderdoc.renderdoccmd.arm64.apk .\\x64\\Development\\plugins\\android\\org.renderdoc.renderdoccmd.arm64.apk
