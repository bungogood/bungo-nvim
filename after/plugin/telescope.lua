local telescope = require("telescope")
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files)
vim.keymap.set("n", "<leader>pg", builtin.git_files)
vim.keymap.set("n", "<leader>ps", builtin.live_grep)

telescope.setup({
    defaults = {
        hidden = true,
        file_ignore_patterns = {
            "node_modules/",
            "dist/",
            ".venv/",
            "venv/",
            ".git/",
            ".DS_Store",
            ".cache",
            ".pytest_cache",
            "yarn.lock",
            "package-lock.json",
        },
        mappings = {
            i = {
                ["<esc>"] = require("telescope.actions").close,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = {
            additional_args = function(_ts)
                return { "--hidden" }
            end
        },
    }
})
