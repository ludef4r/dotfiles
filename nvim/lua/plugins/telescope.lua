return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {
        defaults  = {
            preview = false,
            layout_strategy = "horizontal",
            layout_config = {
                prompt_position = "top",
                mirror = true
            },
            sorting_strategy = "ascending"
        },
        pickers = {
            find_files = {
                hidden = true
            }
        }
    },
    config = function(_, opts)
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup(opts)

        vim.keymap.set("n", "<leader>ff", builtin.find_files)
        vim.keymap.set("n", "<leader>fg", builtin.git_files)
        vim.keymap.set("n", "<leader>fh", builtin.help_tags)
    end
}
