# paper.nvim

A warm, café-inspired Neovim colorscheme with paper tones and rich mocha/coffee brown accents.

## Features

- Warm paper background with espresso brown text
- Carefully crafted color palette inspired by café aesthetics
- Full Tree-sitter support
- LSP diagnostics support
- Plugin integrations (Telescope, GitSigns, nvim-cmp, NeoTree, and more)
- Customizable with transparency and styling options

## Installation

### lazy.nvim

\`\`\`lua
{
  "saravenpi/paper.nvim",
  lazy = false,
  priority = 1000,
}
\`\`\`

### packer.nvim

\`\`\`lua
use { "saravenpi/paper.nvim" }
\`\`\`

## Usage

\`\`\`lua
vim.cmd.colorscheme("paper")
\`\`\`

### Configuration

\`\`\`lua
require("paper").setup({
  transparent = false,
  italic_comments = true,
  italic_keywords = true,
  bold_functions = true,
})

vim.cmd.colorscheme("paper")
\`\`\`

## Color Palette

The theme uses a warm, inviting color palette:

- **Background**: \`#faf6f0\` - Warm paper
- **Foreground**: \`#4a3728\` - Dark roast espresso
- **Red**: \`#b04c3f\` - Roasted berry/cranberry
- **Green**: \`#6a7d3e\` - Matcha/sage
- **Yellow**: \`#c47f2c\` - Honey/caramel
- **Blue**: \`#4d6c7d\` - Dusty denim
- **Magenta**: \`#8b5a5a\` - Cocoa/mocha
- **Cyan**: \`#507964\` - Mint/eucalyptus

## Screenshots

Coming soon!

## License

MIT
