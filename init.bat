@REM 设置编码格式为UTF-8

@REM 打印 "step1"
@REM 打印 "请输入Mod名称："，要求用户输入Mod名称
@REM 打印 "请输入Mod描述："，要求用户输入Mod描述
@REM 打印 "请输入作者名称："，要求用户输入作者名称

@REM 打印 "step2"
@REM 使用Mod名称创建文件夹，下方称该文件夹为root
@REM 在root中创建README.md文件，写入第6行到第22行信息
@REM 路径名	内容
@REM ./images/	一些零碎贴图
@REM ./images/inventoryimages/	物品栏贴图
@REM ./images/map_icons/	小地图图标
@REM ./images/colour_cubes/	滤镜
@REM ./anim/	编译后的动画文件
@REM ./export/	未编译的动画文件
@REM ./scripts/	所有脚本一般都放在这里
@REM ./scripts/brains/	AI相关代码
@REM ./scripts/components/	自定义组件目录
@REM ./scripts/prefabs/	模组添加的全部物体，包括人物、物品、buff类
@REM ./scripts/stategraphs/	自定义的动作图
@REM ./scripts/widgets/	自定义窗体相关脚本
@REM ./modinfo.lua	游戏内模组介绍及模组配置都在这里
@REM ./modmain.lua	模组代码入口
@REM ./modworldgenmain.lua	加载MOD时运行，优先级比modmain高，在这里可以修改世界生成
@REM ./modservercreationmain.lua	暂时与modworldgenmain功能类似，但只会在服务器加载

@REM 打印 "step3"
@REM 在root中创建src文件夹
@REM 在src下根据第7行到第22行信息创建相应文件夹和文件
@REM 打印 "文件夹和文件创建完成"
@REM 等待用户输入任意键后退出

@echo off
chcp 65001

echo step1
set /p modName=请输入Mod名称：


set /p modDesc=请输入Mod描述：


set /p authorName=请输入作者名称：

echo step2
mkdir "%modName%"
cd "%modName%"
(
    echo # %modName%
    echo %modDesc%
    echo.
    echo ## 作者
    echo %authorName%
    echo.
    echo ## 目录结构
    echo ```
    echo ./images/ 一些零碎贴图
    echo ./images/inventoryimages/ 物品栏贴图
    echo ./images/map_icons/ 小地图图标
    echo ./images/colour_cubes/ 滤镜
    echo ./anim/ 编译后的动画文件
    echo ./export/ 未编译的动画文件
    echo ./scripts/ 所有脚本一般都放在这里
    echo ./scripts/brains/ AI相关代码
    echo ./scripts/components/ 自定义组件目录
    echo ./scripts/prefabs/ 模组添加的全部物体，包括人物、物品、buff类
    echo ./scripts/stategraphs/ 自定义的动作图
    echo ./scripts/widgets/ 自定义窗体相关脚本
    echo ./modinfo.lua 游戏内模组介绍及模组配置都在这里
    echo ./modmain.lua 模组代码入口
    echo ./modworldgenmain.lua 加载MOD时运行，优先级比modmain高，在这里可以修改世界生成
    echo ./modservercreationmain.lua 暂时与modworldgenmain功能类似，但只会在服务器加载
    echo ```
) > README.md

echo step3
mkdir src
cd src
mkdir images images\inventoryimages images\map_icons images\colour_cubes anim export scripts scripts\brains scripts\components scripts\prefabs scripts\stategraphs scripts\widgets
cd ..
echo 文件夹和文件创建完成


pause