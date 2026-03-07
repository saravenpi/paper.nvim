local colors = {}

colors.none = "NONE"

local light_palette = {
  bg = "#faf6f0",
  fg = "#4a3728",

  cursor = "#6b4423",
  cursor_text = "#faf6f0",

  selection_fg = "#4a3728",
  selection_bg = "#e8dcc8",

  cream = "#e8dcc8",
  latte = "#cdb8a0",

  red = "#b04c3f",
  red_bright = "#c85a4c",

  green = "#6a7d3e",
  green_bright = "#7a9048",

  yellow = "#c47f2c",
  yellow_bright = "#d4923a",

  blue = "#4d6c7d",
  blue_bright = "#5a7f94",

  magenta = "#8b5a5a",
  magenta_bright = "#a36969",

  cyan = "#507964",
  cyan_bright = "#5f8f76",

  brown = "#4a3728",
  brown_dark = "#3a2818",

  gray_light = "#d4c8b8",
  gray = "#a89985",
  gray_dark = "#7a6f5d",
}

local dark_palette = {
  bg = "#2a1f1a",
  fg = "#e8dcc8",

  cursor = "#d4923a",
  cursor_text = "#2a1f1a",

  selection_fg = "#e8dcc8",
  selection_bg = "#3d2d22",

  cream = "#f5eee0",
  latte = "#e8dcc8",

  red = "#c85a4c",
  red_bright = "#d46d5f",

  green = "#7a9048",
  green_bright = "#8ca558",

  yellow = "#c47f2c",
  yellow_bright = "#d4923a",

  blue = "#4d6c7d",
  blue_bright = "#5a7f94",

  magenta = "#a36969",
  magenta_bright = "#b57a7a",

  cyan = "#507964",
  cyan_bright = "#5f8f76",

  brown = "#e8dcc8",
  brown_dark = "#cdb8a0",

  gray_light = "#6b5d50",
  gray = "#8a7a6a",
  gray_dark = "#a89985",
}

colors.palette = light_palette

function colors.set_variant(variant)
  if variant == "dark" then
    colors.palette = dark_palette
  else
    colors.palette = light_palette
  end

  colors.editor = {
    bg = colors.palette.bg,
    fg = colors.palette.fg,

    cursor = colors.palette.cursor,
    cursor_line = variant == "dark" and "#332721" or "#f4ede4",

    line_nr = colors.palette.gray,
    line_nr_current = variant == "dark" and colors.palette.cream or colors.palette.brown,

    visual = colors.palette.selection_bg,
    search = variant == "dark" and "#4d3a28" or "#f0d9b5",
    inc_search = variant == "dark" and "#5f4630" or "#e8c49a",

    pmenu_bg = variant == "dark" and "#332721" or "#f0ebe2",
    pmenu_sel = variant == "dark" and "#4d3a28" or "#e0d0bc",
    pmenu_sbar = variant == "dark" and "#3d2d22" or "#cdb8a0",

    sign_column = colors.palette.bg,
    color_column = variant == "dark" and "#332721" or "#f4f0ea",

    split = variant == "dark" and colors.palette.selection_bg or colors.palette.latte,

    panel_bg = variant == "dark" and "#332721" or "#e8dcc8",
    statusline_bg = variant == "dark" and "#2d221c" or "#e8dcc8",
    tabline_bg = variant == "dark" and "#2d221c" or "#e8dcc8",
    folded_bg = variant == "dark" and "#332721" or "#e8dcc8",
    code_block_bg = variant == "dark" and "#2d221c" or "#f4ede4",

    diff_add = variant == "dark" and "#2a3320" or "#e8f0dc",
    diff_delete = variant == "dark" and "#3d2320" or "#f5e0dd",
    diff_change = variant == "dark" and "#3d3320" or "#e8e8dc",
    diff_text = variant == "dark" and "#4d4328" or "#d8d8cc",

    git_add = colors.palette.green,
    git_change = colors.palette.yellow,
    git_delete = colors.palette.red,
  }

  colors.syntax = {
    comment = colors.palette.gray,
    constant = colors.palette.magenta,
    string = colors.palette.green,
    character = colors.palette.green_bright,
    number = colors.palette.magenta,
    boolean = colors.palette.magenta_bright,

    identifier = colors.palette.fg,
    ["function"] = colors.palette.blue,

    statement = colors.palette.red,
    conditional = colors.palette.red,
    ["repeat"] = colors.palette.red,
    label = colors.palette.red,
    operator = colors.palette.brown,
    keyword = colors.palette.red,
    exception = colors.palette.red,

    preproc = colors.palette.yellow,
    include = colors.palette.yellow,
    define = colors.palette.yellow,
    macro = colors.palette.yellow,
    precondit = colors.palette.yellow,

    type = colors.palette.yellow_bright,
    storageclass = colors.palette.yellow,
    structure = colors.palette.yellow_bright,
    typedef = colors.palette.yellow_bright,

    special = colors.palette.cyan,
    specialchar = colors.palette.cyan_bright,
    tag = colors.palette.blue,
    delimiter = colors.palette.brown,
    specialcomment = colors.palette.gray_dark,
    debug = colors.palette.red_bright,

    error = colors.palette.red_bright,
    warning = colors.palette.yellow_bright,
    info = colors.palette.blue,
    hint = colors.palette.cyan,

    todo = colors.palette.magenta_bright,
  }
end

return colors
