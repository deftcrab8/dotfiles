-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any
local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "k", api.tree.change_root_to_parent, opts("Up"))
    vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
    vim.keymap.set("n", "l", api.node.navigate.sibling.next, opts("Next Sibling"))
    vim.keymap.set("n", "h", api.node.navigate.sibling.prev, opts("Previous Sibling"))
end

-- pass to setup along with your other options
require("nvim-tree").setup({
    ---
    on_attach = my_on_attach,
    ---
})
