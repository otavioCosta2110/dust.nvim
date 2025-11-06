# Dust Theme

Like gruvbox, but way simpler. 

Instead of coloring every little thing, Dust only highlights what really matters:

- **Strings** - Green
- **Constants** (numbers, booleans, floats) - Blue  
- **Keywords** (if/else, loops, operators) - Red
- **Definitions** (functions, variables) - Purple
- **Punctuation** (brackets, commas, comments) - Gray

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "otaviocosta2110/dust.nvim",
  config = function()
    vim.opt.background = "dark" -- or "light"
    vim.cmd("colorscheme dust")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "otaviocosta2110/dust.nvim",
  config = function()
    vim.opt.background = "dark" -- or "light"
    vim.cmd("colorscheme dust")
  end,
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug "otaviocosta2110/dust.nvim"

" Set in your init.vim or init.lua
set background=dark " or light
colorscheme dust
```

### Manual Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/otaviocosta2110/dust.nvim.git ~/.config/nvim/pack/themes/start/dust.nvim
   ```

2. Add to your `init.lua`:
   ```lua
   vim.opt.background = "dark" -- or "light"
   vim.cmd("colorscheme dust")
   ```

## Usage

The theme automatically adapts to your `background` setting:
- `dark`: Uses dark gruvbox colors with bright accents
- `light`: Uses light gruvbox colors with neutral accents

## Why less is more

Most themes go crazy with colors - every keyword, every type, every operator gets its own color. It's like a syntax highlighter had too much coffee.

Dust takes a chill approach:
- **Only highlight what you need to see**
- **Keep the noise down** - most text stays one color
- **Easy on the eyes** - no fighting with bright colors all day
- **Still gruvbox** - same warm, cozy vibes you know and love

Your eyes will thank you. Your code will still be readable. Win-win.
