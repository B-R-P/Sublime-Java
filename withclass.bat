@echo off
mkdir build 2> nul
cd build && call javac -d . -Xlint %1 && echo Compiled