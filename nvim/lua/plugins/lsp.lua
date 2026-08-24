return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })

        -- Diagnostics
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "■",
                    [vim.diagnostic.severity.WARN] = "■",
                    [vim.diagnostic.severity.INFO] = "",
                    [vim.diagnostic.severity.HINT] = "■",
                },
            },
            underline = true,
            update_in_insert = false,
        })

        local function set_diagnostic_highlights()
            vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#FF4444" })
            vim.api.nvim_set_hl(0, "DiagnosticSignWarn",  { fg = "#D9A83E" })
            vim.api.nvim_set_hl(0, "DiagnosticSignHint",  { fg = "#4FA6C2" })
        end

        set_diagnostic_highlights()

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = set_diagnostic_highlights
        })

        -- Keymaps
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "<leader>qf", function()
            local qf_winid = vim.fn.getqflist({ winid = 0 }).winid

            if qf_winid > 0 then
                vim.cmd("cclose")
            else
                vim.diagnostic.setqflist()
                vim.cmd("copen")
            end
        end)
    end
}
