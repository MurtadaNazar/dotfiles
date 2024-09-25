return {
    {

        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    -- Add all necessary LSP servers
                    "lua_ls",        -- Lua
                    "rust_analyzer", -- Rust
                    "ts_ls",         -- TypeScript
                    "jsonls",        -- JSON
                    "eslint",        -- JavaScript linting
                    "pyright",       -- Python
                    "bashls",        -- Bash
                    "yamlls",        -- YAML
                    "gopls",         -- Go
                    "prismals",      -- Prisma
                    "phpactor",      -- PHP
                    "clangd",        -- C++
                    "marksman",      -- Markdown
                    "taplo",         -- TOML (for projects like Rust)
                    "intelephense",  -- PHP
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- servers configuration
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.eslint.setup({})
            lspconfig.pyright.setup({})
            lspconfig.bashls.setup({})
            lspconfig.yamlls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.prismals.setup({})
            lspconfig.phpactor.setup({})
            lspconfig.clangd.setup({})
            lspconfig.marksman.setup({})
            lspconfig.taplo.setup({})
            lspconfig.intelephense.setup({})

            -- keymap configuration
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }

}
