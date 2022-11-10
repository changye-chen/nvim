-- 基础设置
require('basic')
-- 快捷键binding
require('keybindings')
-- Packer插件管理
require('plugins')
-- 主题设置
require('colorscheme')
-- 插件配置
---- 文件浏览器配置
require('plugin-config.nvim-tree')
---- 顶部标签栏设置
require('plugin-config.bufferline')
---- 底部状态栏设置
require('plugin-config.lualine')
---- 全局搜索配置
require('plugin-config.telescope')
---- 启动页配置
require('plugin-config.dashboard')
---- 打开和切换项目配置
require('plugin-config.project')
---- 代码语法高亮配置
require('plugin-config.nvim-treesitter')
---- 括号自动补全
require("plugin-config.nvim-autopairs")

---- 内置lsp
require('lsp.setup')
require('lsp.cmp')
require('lsp.ui')
--require('lsp.null-ls')

require('wsl')
