require("nvim-treesitter.configs").setup({
    ensure_installed = {},
    ignore_install = {},
    auto_install = true,
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = function()
            return vim.b.large_buf
        end,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<enter>",
            node_incremental = "<enter>",
            node_decremental = "<BS>",
            scope_incremental = false,
        },
    },
    indent = {
        enable = false,
    },
    },
})
require("nvim-treesitter.install").prefer_git = true
