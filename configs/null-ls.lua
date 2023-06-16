local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.deno_fmt, -- deno is very fast for ts/js stuff
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

  -- lua
  b.formatting.stylua,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
