require("conform").setup({
    formatters_by_ft = {
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        lua = { "stylelua" },
        java = { "google-java-format" },
        cs = { "csharpier" },
        html = { "htmlbeautifier" }

    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        async = false,
        lsp_fallback = true,
    },
})
