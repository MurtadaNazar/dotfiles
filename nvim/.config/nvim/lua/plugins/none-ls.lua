return {
    "nvimtools/none-ls.nvim",

    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Lua Formatting
                null_ls.builtins.formatting.stylua,

                -- PHP Formatting and Analysis
                null_ls.builtins.diagnostics.phpstan, -- PHP Static Analysis
                null_ls.builtins.formatting.phpcbf,   -- PHP Code Beautifier and Fixer

                -- ESLint (for JavaScript/TypeScript linting)
                -- null_ls.builtins.diagnostics.eslint, -- Lint JavaScript/TypeScript

                -- Go Language (gofumpt, golines, goimports)
                null_ls.builtins.formatting.gofumpt,   -- Go Formatter
                null_ls.builtins.formatting.golines,   -- Go Line Formatter
                null_ls.builtins.formatting.goimports, -- Go Imports Formatter

                -- Rust Formatting and Linting
                -- null_ls.builtins.formatting.rustfmt,        -- Rust Formatter
                -- null_ls.builtins.diagnostics.rust_analyzer, -- Rust Analyzer

                -- Bash
                -- null_ls.builtins.diagnostics.bashls, -- Bash Linter

                -- YAML
                null_ls.builtins.diagnostics.yamllint, -- YAML Linter

                -- JSON
                null_ls.builtins.formatting.prettier, -- JSON Formatter

                -- Prisma
                -- null_ls.builtins.formatting.prismals, -- Prisma Formatter
            },
        })

        -- Keymap for formatting
        vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    end
}
