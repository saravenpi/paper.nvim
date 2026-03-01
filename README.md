# paper.nvim

A warm, café-inspired Neovim colorscheme with paper tones and rich mocha/coffee brown accents.

## Features

- 🌞 **Light mode** (default) - Warm paper background with espresso brown text
- 🌙 **Dark mode** - Cozy dark roast with cream highlights
- ☕ Carefully crafted color palette inspired by café aesthetics
- 🌳 Full Tree-sitter support
- 💡 LSP diagnostics support
- 🔌 Plugin integrations (Telescope, GitSigns, nvim-cmp, NeoTree, and more)
- 🎨 Customizable with transparency and styling options

## Installation

### lazy.nvim

```lua
{
  "saravenpi/paper.nvim",
  lazy = false,
  priority = 1000,
}
```

### packer.nvim

```lua
use { "saravenpi/paper.nvim" }
```

## Usage

```lua
vim.cmd.colorscheme("paper")
```

### Configuration

```lua
require("paper").setup({
  variant = "light",
  transparent = false,
  italic_comments = true,
  italic_keywords = true,
  bold_functions = true,
})

vim.cmd.colorscheme("paper")
```

#### Options

- `variant` - Theme variant (default: `"light"`)
  - `"light"` - Warm paper background with espresso text
  - `"dark"` - Dark roast background with cream text
- `transparent` - Enable transparent background (default: `false`)
- `italic_comments` - Italicize comments (default: `true`)
- `italic_keywords` - Italicize keywords (default: `true`)
- `bold_functions` - Bold function names (default: `true`)

## Color Palette

The theme uses a warm, inviting color palette:

<div align="center">

### 🎨 Interactive Color Palettes

**[→ View Light Mode Palette](https://coolors.co/faf6f0-4a3728-b04c3f-6a7d3e-c47f2c-4d6c7d-8b5a5a-507964)** | **[→ View Dark Mode Palette](https://coolors.co/2a1f1a-e8dcc8-c85a4c-7a9048-c47f2c-4d6c7d-a36969-507964)**


| Color | Hex | Preview |
|-------|-----|---------|
| **Background** | `#faf6f0` | ![#faf6f0](https://img.shields.io/badge/Warm_Paper-faf6f0?style=for-the-badge&labelColor=4a3728) |
| **Foreground** | `#4a3728` | ![#4a3728](https://img.shields.io/badge/Dark_Roast-4a3728?style=for-the-badge&labelColor=faf6f0) |
| **Red** | `#b04c3f` | ![#b04c3f](https://img.shields.io/badge/Roasted_Berry-b04c3f?style=for-the-badge&labelColor=faf6f0) |
| **Green** | `#6a7d3e` | ![#6a7d3e](https://img.shields.io/badge/Matcha-6a7d3e?style=for-the-badge&labelColor=faf6f0) |
| **Yellow** | `#c47f2c` | ![#c47f2c](https://img.shields.io/badge/Honey-c47f2c?style=for-the-badge&labelColor=faf6f0) |
| **Blue** | `#4d6c7d` | ![#4d6c7d](https://img.shields.io/badge/Dusty_Denim-4d6c7d?style=for-the-badge&labelColor=faf6f0) |
| **Magenta** | `#8b5a5a` | ![#8b5a5a](https://img.shields.io/badge/Cocoa-8b5a5a?style=for-the-badge&labelColor=faf6f0) |
| **Cyan** | `#507964` | ![#507964](https://img.shields.io/badge/Mint-507964?style=for-the-badge&labelColor=faf6f0) |

</div>

## Screenshots

Coming soon!

## License

MIT
