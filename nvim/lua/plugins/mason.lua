return {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            border = "none",
            backdrop = 40,
            check_outdated_packages_on_open = false,
            width = 0.8,
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
}
