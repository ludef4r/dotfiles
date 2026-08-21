return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        local harpoon_extensions = require("harpoon.extensions")
        harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

        -- TODO: Change UI used for highlight current file

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<f1>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<f2>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<f3>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<f4>", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<f5>", function() harpoon:list():select(5) end)

        vim.keymap.set("n", "<M-Left>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<M-Right>", function() harpoon:list():next() end)
    end,
}
