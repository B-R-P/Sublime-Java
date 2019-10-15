@echo off
mkdir build 2> NUL
cd build && call javac -d . -Xlint ..\*.java && echo Main-Class: %1 >..\manifest.txt && jar cvfm ..\%1.jar ..\manifest.txt * >NUL && echo Output: && java -jar ..\%1.jar
del ..\manifest.txt