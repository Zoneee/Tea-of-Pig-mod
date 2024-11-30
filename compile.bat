@echo off


chcp 65001


@REM 编译流程
@REM 创建output变量保存D:\G_Games\steam\steamapps\common\Don't Starve Together\mods\Tea-of-Pig
@REM 创建compiler变量保存"D:\G_Games\steam\steamapps\common\Don't Starve Mod Tools\mod_tools\autocompiler.exe"
@REM 创建origin变量保存当前目录
@REM 删除output文件夹
@REM 复制origin/src文件夹下的所有文件到output文件夹
@REM 运行compiler编译
@REM 将output/images下modicon.tex和modicon.xml复制到output文件夹下


set output="D:\G_Games\steam\steamapps\common\Don't Starve Together\mods\Tea-of-Pig"
set compiler="D:\G_Games\steam\steamapps\common\Don't Starve Mod Tools\mod_tools\autocompiler.exe"
set origin=%cd%

echo ==============================
echo Deleting output folder...
echo ==============================
rmdir /S /Q %output%
echo Output folder deleted successfully.

echo ==============================
echo Copying files to output folder...
echo ==============================
xcopy /E /I /Y %origin%\src %output%
echo Files copied to output folder successfully.

echo ==============================
echo Running compiler...
echo ==============================
%compiler%
echo Compilation completed successfully.

echo ==============================
echo Copying modicon files...
echo ==============================
copy %output%\images\modicon.tex %output%
copy %output%\images\modicon.xml %output%
echo Modicon files copied successfully.


@REM 将output/images文件夹下的所有文件复制回来(?)
@REM 将output/anim文件夹下的所有文件复制回来(?)
