local colors = {}

colors.none = "NONE"

colors.palette = {
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

colors.editor = {
  bg = colors.palette.bg,
  fg = colors.palette.fg,

  cursor = colors.palette.cursor,
  cursor_line = "#f4ede4",

  line_nr = colors.palette.gray,
  line_nr_current = colors.palette.brown,

  visual = colors.palette.selection_bg,
  search = "#f0d9b5",
  inc_search = "#e8c49a",

  pmenu_bg = "#f0ebe2",
  pmenu_sel = "#e0d0bc",

  sign_column = colors.palette.bg,
  color_column = "#f4f0ea",

  split = colors.palette.latte,

  diff_add = "#e8f0dc",
  diff_delete = "#f5e0dd",
  diff_change = "#e8e8dc",
  diff_text = "#d8d8cc",

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

return colors
