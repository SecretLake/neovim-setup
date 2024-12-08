return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = function(bufnr)
                if require("conform").get_formatter_info("ruff_format", bufnr).available then
                    return { "ruff_format" }
                else
                    return { "isort", "black" }
                end
            end,
            javascript = { "prettier" },
            go = { "goimports", "gofmt" },
        },
        format_on_save = {
            lsp_fallback = true,
            timeout_ms = 500,
        },
        format_after_save = {
            lsp_fallback = true,
        },
        notify_on_error = true,
    },
}

