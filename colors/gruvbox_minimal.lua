vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "gruvbox_minimal"

require("gruvbox_minimal").setup()