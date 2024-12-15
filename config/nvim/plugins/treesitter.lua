 require("nvim-treesitter.configs").setup({
            ensure_installed = {},
            ignore_install = {},
            modules = {},
            auto_install = true,
            sync_install = false,
            matchup = {
                enable = false,
                disable_virtual_text = true,
                include_match_words = false,
            },
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
                    -- scope_incremental = "<c-s>",
                },
            },
            indent = {
                enable = false, -- NOTE: Bad perfromance
            },
            endwise = {
                enable = true,
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
                swap = {
                    enable = false,
                    swap_next = {
                        ["<leader>a"] = "@parameter.inner",
                    },
                    swap_previous = {
                        ["<leader>A"] = "@parameter.inner",
                    },
                },
                move = {
                    enable = false,
                    set_jumps = true, -- whether to set jumps in the jumplist
                    goto_next_start = {
                        ["]m"] = "@function.outer",
                        ["]#"] = "@conditional.outer",
                        ["]l"] = "@loop.outer",
                        ["]b"] = "@block.outer",
                    },
                    goto_next_end = {
                        ["]M"] = "@function.outer",
                        ["]B"] = "@block.outer",
                    },
                    goto_previous_start = {
                        ["[m"] = "@function.outer",
                        ["[#"] = "@conditional.outer",
                        ["[l"] = "@loop.outer",
                        ["[b"] = "@block.outer",
                    },
                    goto_previous_end = {
                        ["[M"] = "@function.outer",
                        ["[B"] = "@block.outer",
                    },
                },
            },
        })
        -- require("nvim-treesitter.install").prefer_git = true
	--   end,
}

