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
    textobjects = {
        select = {
            enable = false,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
                ["ab"] = "@block.outer",
                ["ib"] = "@block.inner",
                ["a#"] = "@condition.outer",
                ["i#"] = "@condition.inner",
            },
        },
        move = {
            enable = false,
            set_jumps = true,
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]#"] = "@conditional.outer",
                ["]l"] = "@loop.outer",
                ["]b"] = "@block.outer",
            },
            -- etc...
        },
        -- other textobjects configurations...
    },
})
require("nvim-treesitter.install").prefer_git = true
