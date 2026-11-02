require("render-markdown").setup({})

vim.keymap.set("n", "<leader>mp", ":RenderMarkdown toggle<CR>", { silent = true, desc = "Toggle markdown preview" })
