local nvim_tree = require("nvim-tree")

nvim_tree.setup({
    update_cwd = true,
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    view = {
        side = "left",
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    filters = {
        dotfiles = false,
    },
    diagnostics = {
        enable = true,
    },
    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
})
