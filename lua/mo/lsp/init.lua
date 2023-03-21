local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "mo.lsp.mason"
require("mo.lsp.handlers").setup()
require "mo.lsp.null-ls"
