return {
  "stevearc/conform.nvim",
  event = {
    "BufReadPre",
    "BufNewFile"
  },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { { "prettier" } },
        typescript = { { "prettier" } },
        javascriptreact = { { "prettier" } },
        typescriptreact = { { "prettier" } },
        css = { { "prettier" } },
        tailwindcss = { { "prettier" } },
        html = { { "prettier" } },
        json = { { "prettier" } },
        yaml = { { "prettier" } },
        markdown = { { "prettier" } },
        lua = { { "stylua" } },
        csharp = { { "csharpier" } },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
      }
    })
  end
}
