@echo off



echo removendo antigo lovegame

adb shell rm -r sdcard/lovegame

echo lovegame removido

echo enviando %1 como novo lovegame

adb shell mkdir sdcard/lovegame

adb push %1/. /sdcard/lovegame/

echo %1 enviado.

echo Abrindo love for android

adb shell am start -S -n "org.love2d.android/.GameActivity"