return {
    {
        "benlubas/molten-nvim",
        tag = 'v1.9.2',
        dependencies = { "3rd/image.nvim" },
        build = ":UpdateRemotePlugins",
        init = function()
            -- I find auto open annoying, keep in mind setting this option will require setting
            -- a keybind for `:noautocmd MoltenEnterOutput` to open the output again
            vim.g.molten_auto_open_output = false

            -- optional, I like wrapping. works for virt text and the output window
            vim.g.molten_wrap_output = true

            -- Output as virtual text. Allows outputs to always be shown, works with images, but can
            -- be buggy with longer images
            vim.g.molten_virt_text_output = true

            -- this will make it so the output shows up below the \`\`\` cell delimiter
            vim.g.molten_virt_lines_off_by_1 = true

            vim.g.molten_image_provider = "image.nvim"
            vim.g.molten_output_win_max_height = 20
            vim.g.python3_host_prog=vim.fn.expand("~/.virtualenvs/neovim/bin/python3")

            vim.keymap.set("n", "<localleader>li", ":MoltenInit<CR>", { desc = "init kernel", silent = true })
            vim.keymap.set("n", "<localleader>le", ":MoltenEvaluateOperator<CR>", { desc = "evaluate operator", silent = true })
            vim.keymap.set("n", "<localleader>lr", ":MoltenReevaluateCell<CR>", { desc = "re-eval cell", silent = true })
            vim.keymap.set("v", "<localleader>lr", ":<C-u>MoltenEvaluateVisual<CR>gv", { desc = "execute visual selection", silent = true })
            vim.keymap.set("n", "<localleader>ls", ":noautocmd MoltenEnterOutput<CR>", { desc = "open output window", silent = true })
            vim.keymap.set("n", "<localleader>lh", ":MoltenHideOutput<CR>", { desc = "close output window", silent = true })
            vim.keymap.set("n", "<localleader>ld", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })

            vim.keymap.set("n", "<localleader>lx", ":MoltenOpenInBrowser<CR>", { desc = "open output in browser", silent = true })
        end,
    },
}
