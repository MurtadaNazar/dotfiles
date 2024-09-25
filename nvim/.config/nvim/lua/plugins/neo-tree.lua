return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" },
    -- neotree plugin configuration
    config = function()
        vim.keymap.set('n', '<leader>nc', ':Neotree filesystem close   <CR>')
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')
    end
}
