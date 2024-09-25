return {
    "rmagatti/auto-session",
    dependencies = {
        'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
    },
    config = function()
        require("auto-session").setup({
            auto_session_suppress_dirs = { "~", "~/Projects", "~/Downloads", "/", "~/Work/*" },
            session_lens = {
                buftypes_to_ignore = {},
                load_on_setup = true,
                theme_conf = {
                    border = true
                },
                previewer = false
            },
            vim.keymap.set("n", "<Leader>ls", require("auto-session.session-lens").search_session, {
                noremap = true
            })
        })
    end
}
