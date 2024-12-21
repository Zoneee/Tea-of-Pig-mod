-- 名称
name = "Tea of Pig"
-- 描述
description = "Sample Mod"
-- 作者
author = "Alphosne"
-- 版本
version = "0.1"
-- klei官方论坛地址，为空则默认是工坊的地址
forumthread = ""
-- modicon
icon_atlas = "modicon.xml"
icon = "modicon.tex"
-- dst兼容
dst_compatible = true
-- 是否是客户端mod
client_only_mod = true
-- 是否是所有客户端都需要安装
all_clients_require_mod = false
-- 饥荒api版本，固定填10
api_version = 10

-- mod的配置项，后面介绍
-- mod的配置项，后面介绍
configuration_options = {{
    name = "use_count",             -- 配置项名换，在modmain.lua里获取配置值时要用到
    hover = "奶茶使用次数",        -- 鼠标移到配置项上时所显示的信息
    options = {{                    -- 配置项目可选项
        description = "默认",        -- 可选项上显示的内容
        hover = "默认可使用100次",    -- 鼠标移动到可选项上显示的信息
        data = 100                  -- 可选项选中时的值，在modmain.lua里获取到的值就是这个数据，类型可以为整形，布尔，浮点，字符串
    }, {
        description = "200次",
        hover = "总共可使用200次",
        data = 200
    }, {
        description = "无限次",
        hover = "无耐久，随便用",
        data = 0
    }},
    default = 100                   -- 默认值，与可选项里的值匹配作为默认值
}}
