local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("n", "<leader>pl", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")


local actions = require("telescope.actions")
require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
            },
        },
        pickers = {
            find_files = {
                find_command = { "rg", "--files", "--hidden", "--glob"},
            },
        },
    },
})

local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")
telescope.setup {
    extensions = {
        live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = {         -- extend mappings
                i = {
                    ["<C-k>"] = lga_actions.quote_prompt(),
                    ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                    -- freeze the current list and start a fuzzy search in the frozen list
                    ["<C-space>"] = actions.to_fuzzy_refine,
                },
            },
        }
    }
}

-- don't forget to load the extension
telescope.load_extension("live_grep_args")
