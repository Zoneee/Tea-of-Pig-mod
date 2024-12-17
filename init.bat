@echo off
chcp 65001

setlocal enabledelayedexpansion

set /p modname="请输入Mod名称: "
if "!modname!"=="" set modname=MyFirstMod

:: 输入Mod描述
set /p description="请输入Mod描述: "
if "!description!"=="" set description=A simple mod for testing

set /p author="请输入作者名称: "
if "!author!"=="" set author=YourName

for /f "tokens=2 delims==" %%I in ('"wmic os get localdatetime /value"') do set datetime=%%I
set foldername=!modname!_%datetime:~0,8%_%datetime:~8,6%

echo 创建Mod文件夹：!foldername!
mkdir "!foldername!"
cd "!foldername!"
mkdir "src"
cd "src"
mkdir "scripts"
mkdir "images"
mkdir "sounds"
mkdir "prefabs"

echo 创建 modinfo.lua 文件...
(
    echo name = "!modname!"
    echo description = "!description!"
    echo author = "!author!"
    echo version = "1.0"
    echo api_version = 10
    echo dont_starve_compatible = true
    echo reign_of_giants_compatible = true
    echo shipwrecked_compatible = true
    echo dst_compatible = false
    echo forumthread = ""
) > "!foldername!\src\modinfo.lua"

echo 创建 modmain.lua 文件...
echo "" > "!foldername!\src\modmain.lua"

(
    echo local function fn()
    echo     local inst = CreateEntity()
    echo     inst:AddComponent("inventoryitem")
    echo     inst:AddComponent("inspectable")
    echo     inst:AddComponent("stackable")
    echo     inst.components.inventoryitem.imagename = "myitem"
    echo     inst.components.inventoryitem.atlasname = "images/inventoryimages/myitem.xml"
    echo     return inst
    echo end
    echo local my_item = Prefab("myitem", fn)
    echo return my_item
) > "!foldername!\src\modmain.lua"

echo 初始化完成！新的Mod文件夹已创建：!foldername!
echo 所有文件都放在 "src" 文件夹内，你可以在该目录下开始编辑你的Mod。
pause
