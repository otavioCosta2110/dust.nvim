local M = {}

local palette = require("dust.palette").palette

function M.setup()
  local background = vim.opt.background:get()
  local colors = background == "light" and {
    bg = palette.light0,
    fg = palette.dark0,
    string = palette.neutral_green,
    constant = palette.neutral_blue,
    keyword = palette.neutral_red,
    punctuation = palette.gray,
    definition = palette.neutral_purple,
  } or {
    bg = palette.dark0,
    fg = palette.light0,
    string = palette.bright_green,
    constant = palette.bright_blue,
    keyword = palette.bright_red,
    punctuation = palette.light4,
    definition = palette.bright_purple,
  }

  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })

  vim.api.nvim_set_hl(0, "String", { fg = colors.string })
  vim.api.nvim_set_hl(0, "Constant", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "Number", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "Boolean", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "Float", { fg = colors.constant })

  vim.api.nvim_set_hl(0, "Keyword", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Conditional", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Repeat", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Label", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Operator", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Exception", { fg = colors.keyword })

  vim.api.nvim_set_hl(0, "Function", { fg = colors.definition })
  vim.api.nvim_set_hl(0, "Identifier", { fg = colors.definition })
  vim.api.nvim_set_hl(0, "Define", { fg = colors.definition })
  vim.api.nvim_set_hl(0, "Macro", { fg = colors.definition })
  vim.api.nvim_set_hl(0, "TypeDef", { fg = colors.definition })

  vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.punctuation })
  vim.api.nvim_set_hl(0, "Punctuation", { fg = colors.punctuation })
  vim.api.nvim_set_hl(0, "Bracket", { fg = colors.punctuation })
  vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.punctuation })

  vim.api.nvim_set_hl(0, "Comment", { fg = colors.punctuation, italic = true })
  vim.api.nvim_set_hl(0, "NonText", { fg = colors.punctuation })
  vim.api.nvim_set_hl(0, "Whitespace", { fg = colors.punctuation })

  vim.api.nvim_set_hl(0, "Statement", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "PreProc", { fg = colors.definition })
  vim.api.nvim_set_hl(0, "Type", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "Special", { fg = colors.punctuation })
  vim.api.nvim_set_hl(0, "Underlined", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "Error", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Todo", { fg = colors.keyword })

  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.punctuation })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.bg })
vim.api.nvim_set_hl(0, "CursorLine", { bg = background == "light" and palette.light1 or palette.dark1 })
  vim.api.nvim_set_hl(0, "ColorColumn", { bg = background == "light" and palette.light1 or palette.dark1 })
  vim.api.nvim_set_hl(0, "Directory", { fg = colors.definition })
  vim.api.nvim_set_hl(0, "StatusLine", { fg = background == "light" and palette.dark2 or palette.light2, bg = background == "light" and palette.light1 or palette.dark1 })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = background == "light" and palette.dark3 or palette.light3, bg = background == "light" and palette.light1 or palette.dark1 })
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = background == "light" and palette.neutral_green or palette.bright_green, bg = colors.bg })
  vim.api.nvim_set_hl(0, "MsgArea", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CmdLine", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CmdLineEnter", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CmdLineLeave", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.definition })
  vim.api.nvim_set_hl(0, "@namespace", { fg = colors.definition })
end

return M
