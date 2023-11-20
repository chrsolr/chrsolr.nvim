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
        javascript = { "biome", "prettier" },
        typescript = { "biome", "prettier" },
        javascriptreact = { "biome", },
        typescriptreact = { "biome", },
        css = { "biome", "prettier" },
        tailwindcss = { "biome", "prettier" },
        html = { "biome", "prettier" },
        json = { "biome", "prettier" },
        yaml = { "biome", "prettier" },
        markdown = { "biome", "prettier" },
        lua = { "stylua" },
        csharp = { "csharpier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
      }
    })
  end
}
