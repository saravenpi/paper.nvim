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

    Folded = { fg = c.gray_dark, bg = c.cream },
    FoldColumn = { fg = c.gray, bg = editor.sign_column },
    SignColumn = { bg = editor.sign_column },

    Pmenu = { fg = editor.fg, bg = editor.pmenu_bg },
    PmenuSel = { fg = editor.fg, bg = editor.pmenu_sel, bold = true },
    PmenuSbar = { bg = c.latte },
    PmenuThumb = { bg = c.gray },

    StatusLine = { fg = c.brown, bg = c.cream },
    StatusLineNC = { fg = c.gray, bg = c.cream },
    TabLine = { fg = c.gray, bg = c.cream },
    TabLineFill = { bg = c.cream },
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

    GitSignsAdd = { fg = editor.git_add },
    GitSignsChange = { fg = editor.git_change },
    GitSignsDelete = { fg = editor.git_delete },

    TelescopeBorder = { fg = c.latte },
    TelescopePromptBorder = { fg = c.latte },
    TelescopeResultsBorder = { fg = c.latte },
    TelescopePreviewBorder = { fg = c.latte },

    NeoTreeNormal = { bg = c.cream },
    NeoTreeNormalNC = { bg = c.cream },

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

  return highlights
end

return M
