@echo off
mkdir build 2> nul
copy %2.java .\build >NUL && cd build && call javac -Xlint %2.java && echo Output: &&java %2
del %2.java