require('nvim-treesitter.configs').setup {
    ensure_installed = { 'bash', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'hyprlang' },

    auto_install = true,

    highlight = { enable = true },

    indent = { enable = true },

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
}
