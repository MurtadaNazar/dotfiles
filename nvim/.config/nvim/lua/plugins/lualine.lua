return {
    "nvim-lualine/lualine.nvim",
    -- lualine plugin configuration
    config = function()
        require("lualine").setup({
            options = {
                theme = "dracula"
            }
        })
    end
}
