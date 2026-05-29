local M = {}

function M.setup(colors)
  local c = colors.palette
  local editor = colors.editor
  local syntax = colors.syntax

  local highlights = {
    Normal = { fg = editor.fg, bg = editor.bg },
    NormalFloat = { fg = editor.fg, bg = editor.pmenu_bg },
    NormalNC = { fg = editor.fg, bg = editor.bg },

    Comment = { fg = syntax.comment, italic = true },

    Constant = { fg = syntax.constant },
    String = { fg = syntax.string },
    Character = { fg = syntax.character },
    Number = { fg = syntax.number },
    Boolean = { fg = syntax.boolean },
    Float = { fg = syntax.number },

    Identifier = { fg = syntax.identifier },
    Function = { fg = syntax["function"], bold = true },

    Statement = { fg = syntax.statement },
    Conditional = { fg = syntax.conditional },
    Repeat = { fg = syntax["repeat"] },
    Label = { fg = syntax.label },
    Operator = { fg = syntax.operator },
    Keyword = { fg = syntax.keyword, italic = true },
    Exception = { fg = syntax.exception },

    PreProc = { fg = syntax.preproc },
    Include = { fg = syntax.include },
    Define = { fg = syntax.define },
    Macro = { fg = syntax.macro },
    PreCondit = { fg = syntax.precondit },

    Type = { fg = syntax.type },
    StorageClass = { fg = syntax.storageclass },
    Structure = { fg = syntax.structure },
    Typedef = { fg = syntax.typedef },

    Special = { fg = syntax.special },
    SpecialChar = { fg = syntax.specialchar },
    Tag = { fg = syntax.tag },
    Delimiter = { fg = syntax.delimiter },
    SpecialComment = { fg = syntax.specialcomment, italic = true },
    Debug = { fg = syntax.debug },

    Underlined = { underline = true },
    Ignore = {},
    Error = { fg = syntax.error, bold = true },
    Todo = { fg = syntax.todo, bold = true },

    Cursor = { fg = c.cursor_text, bg = c.cursor },
    lCursor = { fg = c.cursor_text, bg = c.cursor },
    CursorIM = { fg = c.cursor_text, bg = c.cursor },
    TermCursor = { fg = c.cursor_text, bg = c.cursor },
    TermCursorNC = { fg = c.cursor_text, bg = c.gray },

    ColorColumn = { bg = editor.color_column },
    CursorColumn = { bg = editor.cursor_line },
    CursorLine = { bg = editor.cursor_line },
    CursorLineNr = { fg = editor.line_nr_current, bold = true },

    LineNr = { fg = editor.line_nr },
    LineNrAbove = { fg = editor.line_nr },
    LineNrBelow = { fg = editor.line_nr },

    Folded = { fg = c.gray_dark, bg = editor.folded_bg },
    FoldColumn = { fg = c.gray, bg = editor.sign_column },
    SignColumn = { bg = editor.sign_column },

    Pmenu = { fg = editor.fg, bg = editor.pmenu_bg },
    PmenuSel = { fg = editor.fg, bg = editor.pmenu_sel, bold = true },
    PmenuSbar = { bg = editor.pmenu_sbar },
    PmenuThumb = { bg = c.gray },

    StatusLine = { fg = c.brown, bg = editor.statusline_bg },
    StatusLineNC = { fg = c.gray, bg = editor.statusline_bg },
    TabLine = { fg = c.gray, bg = editor.tabline_bg },
    TabLineFill = { bg = editor.tabline_bg },
    TabLineSel = { fg = c.brown, bg = editor.bg, bold = true },

    VertSplit = { fg = editor.split },
    WinSeparator = { fg = editor.split },

    Visual = { bg = editor.visual },
    VisualNOS = { bg = editor.visual },

    Search = { bg = editor.search },
    IncSearch = { bg = editor.inc_search, bold = true },
    CurSearch = { bg = editor.inc_search, bold = true },

    MatchParen = { fg = c.red_bright, bold = true, underline = true },

    Question = { fg = c.blue },
    MoreMsg = { fg = c.green },
    ModeMsg = { fg = c.brown, bold = true },
    WarningMsg = { fg = syntax.warning },
    ErrorMsg = { fg = syntax.error, bold = true },

    Directory = { fg = c.blue, bold = true },
    Title = { fg = c.brown, bold = true },
    SpecialKey = { fg = c.gray },
    NonText = { fg = c.gray_light },
    Whitespace = { fg = c.gray_light },

    DiffAdd = { bg = editor.diff_add },
    DiffChange = { bg = editor.diff_change },
    DiffDelete = { fg = c.red, bg = editor.diff_delete },
    DiffText = { bg = editor.diff_text, bold = true },

    SpellBad = { sp = c.red, undercurl = true },
    SpellCap = { sp = c.yellow, undercurl = true },
    SpellLocal = { sp = c.cyan, undercurl = true },
    SpellRare = { sp = c.magenta, undercurl = true },

    DiagnosticError = { fg = syntax.error },
    DiagnosticWarn = { fg = syntax.warning },
    DiagnosticInfo = { fg = syntax.info },
    DiagnosticHint = { fg = syntax.hint },

    DiagnosticUnderlineError = { sp = syntax.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = syntax.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = syntax.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = syntax.hint, undercurl = true },

    ["@comment"] = { link = "Comment" },
    ["@error"] = { link = "Error" },
    ["@none"] = { bg = colors.none, fg = colors.none },
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },
    ["@operator"] = { link = "Operator" },

    ["@punctuation.delimiter"] = { fg = syntax.delimiter },
    ["@punctuation.bracket"] = { fg = c.brown },
    ["@punctuation.special"] = { fg = syntax.special },

    ["@string"] = { link = "String" },
    ["@string.regex"] = { fg = c.cyan },
    ["@string.escape"] = { fg = c.cyan_bright },
    ["@string.special"] = { fg = c.cyan_bright },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@float"] = { link = "Float" },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = c.blue_bright, bold = true },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },

    ["@method"] = { link = "Function" },
    ["@method.call"] = { link = "Function" },

    ["@constructor"] = { fg = c.yellow_bright, bold = true },
    ["@parameter"] = { fg = c.fg },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { fg = c.red, italic = true },
    ["@keyword.operator"] = { fg = c.red },
    ["@keyword.return"] = { fg = c.red, italic = true },

    ["@conditional"] = { link = "Conditional" },
    ["@repeat"] = { link = "Repeat" },
    ["@debug"] = { link = "Debug" },
    ["@label"] = { link = "Label" },
    ["@include"] = { link = "Include" },
    ["@exception"] = { link = "Exception" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = c.yellow_bright },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "Type" },

    ["@storageclass"] = { link = "StorageClass" },
    ["@attribute"] = { fg = c.cyan },
    ["@field"] = { fg = c.fg },
    ["@property"] = { fg = c.fg },

    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.magenta, italic = true },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = c.magenta_bright },
    ["@constant.macro"] = { link = "Define" },

    ["@namespace"] = { fg = c.yellow },
    ["@symbol"] = { fg = c.cyan },

    ["@text"] = { fg = c.fg },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { link = "Title" },
    ["@text.literal"] = { fg = c.green },
    ["@text.uri"] = { fg = c.cyan, underline = true },
    ["@text.math"] = { fg = c.blue },
    ["@text.reference"] = { fg = c.magenta },
    ["@text.environment"] = { fg = c.magenta },
    ["@text.environment.name"] = { fg = c.yellow },

    ["@text.note"] = { fg = syntax.info },
    ["@text.warning"] = { fg = syntax.warning },
    ["@text.danger"] = { fg = syntax.error },

    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { fg = c.yellow },
    ["@tag.delimiter"] = { fg = c.gray_dark },

    ["@markup.heading.1"] = { fg = c.red, bold = true },
    ["@markup.heading.2"] = { fg = c.magenta, bold = true },
    ["@markup.heading.3"] = { fg = c.yellow, bold = true },
    ["@markup.heading.4"] = { fg = c.green, bold = true },
    ["@markup.heading.5"] = { fg = c.blue, bold = true },
    ["@markup.heading.6"] = { fg = c.cyan },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.link"] = { fg = c.cyan, underline = true },
    ["@markup.link.label"] = { fg = c.blue },
    ["@markup.link.url"] = { fg = c.cyan_bright, underline = true },

    ["@markup.raw"] = { fg = c.green, bg = editor.code_block_bg },
    ["@markup.raw.block"] = { fg = c.green, bg = editor.code_block_bg },

    ["@markup.list"] = { fg = c.magenta },
    ["@markup.list.checked"] = { fg = c.green_bright },
    ["@markup.list.unchecked"] = { fg = c.gray },

    ["@markup.quote"] = { fg = c.gray_dark, italic = true },

    GitSignsAdd = { fg = editor.git_add },
    GitSignsChange = { fg = editor.git_change },
    GitSignsDelete = { fg = editor.git_delete },

    TelescopeBorder = { fg = c.latte },
    TelescopePromptBorder = { fg = c.latte },
    TelescopeResultsBorder = { fg = c.latte },
    TelescopePreviewBorder = { fg = c.latte },

    NeoTreeNormal = { bg = editor.panel_bg },
    NeoTreeNormalNC = { bg = editor.panel_bg },
    NeoTreeEndOfBuffer = { fg = editor.line_nr, bg = editor.panel_bg },
    NeoTreeCursorLine = { bg = editor.cursor_line },

    NvimTreeNormal = { bg = editor.panel_bg },
    NvimTreeNormalNC = { bg = editor.panel_bg },
    NvimTreeEndOfBuffer = { fg = editor.line_nr, bg = editor.panel_bg },
    NvimTreeCursorLine = { bg = editor.cursor_line },

    LspReferenceText = { bg = editor.cursor_line },
    LspReferenceRead = { bg = editor.cursor_line },
    LspReferenceWrite = { bg = editor.cursor_line, underline = true },

    CmpItemAbbrMatch = { fg = c.blue, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.blue, bold = true },
    CmpItemKindVariable = { fg = c.fg },
    CmpItemKindInterface = { fg = c.yellow },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindFunction = { fg = c.blue },
    CmpItemKindMethod = { fg = c.blue },
    CmpItemKindKeyword = { fg = c.red },
    CmpItemKindProperty = { fg = c.fg },
    CmpItemKindUnit = { fg = c.magenta },
  }

  local function mix_hex(hex1, hex2, alpha)
    local r1, g1, b1 = tonumber(hex1:sub(2, 3), 16), tonumber(hex1:sub(4, 5), 16), tonumber(hex1:sub(6, 7), 16)
    local r2, g2, b2 = tonumber(hex2:sub(2, 3), 16), tonumber(hex2:sub(4, 5), 16), tonumber(hex2:sub(6, 7), 16)
    return string.format("#%02x%02x%02x",
      math.floor(r1 * (1 - alpha) + r2 * alpha),
      math.floor(g1 * (1 - alpha) + g2 * alpha),
      math.floor(b1 * (1 - alpha) + b2 * alpha))
  end

  local is_dark_bg = tonumber(editor.bg:sub(2, 3), 16) < 128
  local mv_alpha = is_dark_bg and 0.25 or 0.15

  local mv_palette = {
    [0] = c.gray,
    [1] = c.red,
    [2] = c.magenta,
    [3] = c.yellow,
    [4] = c.green,
    [5] = c.blue,
    [6] = c.cyan,
    [7] = c.magenta_bright,
  }

  for i = 0, 7 do
    local fg_color = mv_palette[i]
    local tinted_bg = mix_hex(editor.bg, fg_color, mv_alpha)
    highlights["MarkviewPalette" .. i] = { bg = tinted_bg, fg = fg_color }
    highlights["MarkviewPalette" .. i .. "Sign"] = { fg = fg_color }
    highlights["MarkviewPalette" .. i .. "Fg"] = { fg = fg_color }
    highlights["MarkviewPalette" .. i .. "Bg"] = { bg = tinted_bg }
  end

  highlights["MarkviewCode"] = { bg = editor.code_block_bg }
  highlights["MarkviewInlineCode"] = { bg = editor.code_block_bg, fg = c.green }
  highlights["MarkviewCodeInfo"] = { fg = c.gray, bg = editor.code_block_bg }
  highlights["MarkviewCodeFg"] = { fg = editor.code_block_bg }

  for h = 1, 6 do
    highlights["MarkviewHeading" .. h] = { link = "MarkviewPalette" .. h }
    highlights["MarkviewHeading" .. h .. "Sign"] = { link = "MarkviewPalette" .. h .. "Sign" }
  end

  for i = 0, 6 do
    highlights["MarkviewIcon" .. i] = { fg = mv_palette[i], bg = editor.code_block_bg }
  end

  highlights["MarkviewBlockQuoteDefault"] = { fg = c.gray }
  highlights["MarkviewBlockQuoteError"] = { fg = c.red_bright }
  highlights["MarkviewBlockQuoteNote"] = { fg = c.blue_bright }
  highlights["MarkviewBlockQuoteOk"] = { fg = c.green }
  highlights["MarkviewBlockQuoteSpecial"] = { fg = c.yellow_bright }
  highlights["MarkviewBlockQuoteWarn"] = { fg = c.yellow }

  highlights["MarkviewCheckboxCancelled"] = { fg = c.gray }
  highlights["MarkviewCheckboxChecked"] = { fg = c.green }
  highlights["MarkviewCheckboxPending"] = { fg = c.yellow }
  highlights["MarkviewCheckboxProgress"] = { fg = c.blue }
  highlights["MarkviewCheckboxUnchecked"] = { fg = c.red_bright }
  highlights["MarkviewCheckboxStriked"] = { fg = c.gray, strikethrough = true }

  highlights["MarkviewListItemMinus"] = { fg = c.yellow }
  highlights["MarkviewListItemPlus"] = { fg = c.green }
  highlights["MarkviewListItemStar"] = { fg = c.blue }

  highlights["MarkviewTableHeader"] = { fg = c.brown, bold = true }
  highlights["MarkviewTableBorder"] = { fg = c.blue_bright }
  highlights["MarkviewTableAlignLeft"] = { fg = c.brown, bold = true }
  highlights["MarkviewTableAlignCenter"] = { fg = c.brown, bold = true }
  highlights["MarkviewTableAlignRight"] = { fg = c.brown, bold = true }

  highlights["MarkviewHyperlink"] = { fg = c.cyan, underline = true }
  highlights["MarkviewImage"] = { fg = c.cyan, underline = true }
  highlights["MarkviewEmail"] = { fg = c.cyan_bright, underline = true }
  highlights["MarkviewSubscript"] = { fg = c.yellow_bright }
  highlights["MarkviewSuperscript"] = { fg = c.blue }

  for i = 0, 9 do
    highlights["MarkviewGradient" .. i] = { fg = mix_hex(editor.bg, c.brown, i / 9) }
  end

  return highlights
end

return M
