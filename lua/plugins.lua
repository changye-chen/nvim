require("packer").startup({
    function(use)
        -- Packer 可以管理自己本身
        use 'wbthomason/packer.nvim'
        -- 插件列表...
        -- colorScheme 主题颜色
        use 'folke/tokyonight.nvim'
        use 'sainnhe/edge'
        -- nvim-tree 文件浏览树
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        -- bufferline 顶部标签页
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
        -- lualine 底部状态栏
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        -- telescope 文件模糊查询
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
        -- telescope extensions 扩展的扩展
        use "ahmedkhalf/project.nvim"
        use "LinArcX/telescope-env.nvim"
        -- dashboard-nvim
        use("glepnir/dashboard-nvim")

        -- treesitter 代码高亮
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

        --------------------- LSP --------------------
        use("williamboman/nvim-lsp-installer")
        -- Lspconfig
        use({ "neovim/nvim-lspconfig" })

        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")

        -- ui
        use("onsails/lspkind-nvim")
        use("tami5/lspsaga.nvim" )

        -- 代码格式化
        -- use("mhartington/formatter.nvim")
        use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

        -- 补全空格
        use("windwp/nvim-autopairs")
    end,
    config = {
        -- 并发数限制
        max_jobs = 16,
        -- 自定义源
        -- 在配置完clash的代理后便不再需要配置git
        git = {
            -- default_url_format = "https://hub.fastgit.xyz/%s",
            -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
            -- default_url_format = "https://gitcode.net/mirrors/%s",
            -- default_url_format = "https://gitclone.com/github.com/%s",
        },
    },
})

pcall(
    vim.cmd,
    [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
