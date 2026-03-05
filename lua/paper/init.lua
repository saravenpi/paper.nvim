local M = {}

M.config = {
  transparent = false,
  italic_comments = true,
  italic_keywords = true,
  bold_functions = true,
  variant = "light",
}

function M.setup(opts)
  opts = opts or {}
  M.config = vim.tbl_deep_extend("force", M.config, opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "paper"

  local variant = M.config.variant
  if vim.o.background == "dark" then
    variant = "dark"
  elseif vim.o.background == "light" then
    variant = "light"
  end

  local colors = require("paper.colors")
  colors.set_variant(variant)
  local highlights = require("paper.highlights").setup(colors)

  for group, settings in pairs(highlights) do
    if M.config.transparent and (group == "Normal" or group == "NormalNC" or group == "SignColumn") then
      settings.bg = "NONE"
    end

    if not M.config.italic_comments and group == "Comment" then
      settings.italic = false
    end

    if not M.config.italic_keywords and (group == "Keyword" or group:match("@keyword")) then
      settings.italic = false
    end

    if not M.config.bold_functions and (group == "Function" or group:match("function")) then
      settings.bold = false
    end

    vim.api.nvim_set_hl(0, group, settings)
  end

  vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    group = vim.api.nvim_create_augroup("PaperThemeReload", { clear = true }),
    callback = function()
      if vim.g.colors_name == "paper" then
        M.load()
      end
    end,
  })
end

return M
