local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html", "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars" } }, -- so prettier works only on these filetypes
  b.diagnostics.eslint.with { filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" } },
  b.code_actions.eslint.with { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
