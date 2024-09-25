return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- treesitter plugin configuration
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            -- ensure_installed = { "lua", "vim", "markdown", "markdown_inline", "json", "yaml", "rust", "go", "php", "cpp",
            --     "prisma", "tmux", "javascript", "typescript" },
            auto_install = true,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            },
            incremental_selection = {
                enable = true
            }
        })
    end
}
