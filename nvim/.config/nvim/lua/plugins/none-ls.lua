return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- Lua formatter (stylua)
                null_ls.builtins.formatting.stylua.with({
                    extra_args = { "--config-path", vim.fn.expand("~/.config/stylua.toml") },
                }),

                -- C/C++ formatter (clang-format)
                null_ls.builtins.formatting.clang_format.with({
                    extra_args = { "--style=file:~/.config/.clang-format" }, -- Utilise un fichier .clang-format si disponible
                }),
            },
        })

        -- Keymap for formatting
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
