# NOE.ED

**my personal Neovim configuration**

A modern, feature-rich Neovim configuration built on top of [LazyVim](https://github.com/LazyVim/LazyVim) with extensive language support, AI integrations, and an opinioned keymap system.

## Highlights

Includes:

- **AI Arsenal**: Claude Code + OpenCode + Supermaven working together
- **Always-on Git Blame**: See commit context for every line without lifting a finger
- **macOS Native Feel**: Delete words with Alt+Backspace, familiar shortcuts
- **Borderless Aesthetics**: LazyGit and terminals with clean, border-free interfaces

## Features

- **Modern Plugin Management**: Powered by [lazy.nvim](https://github.com/folke/lazy.nvim) with automatic plugin updates
- **AI Integration**: Triple AI support with Claude Code, OpenCode, and Supermaven
- **Extensive Language Support**: Pre-configured for Go, Python, Rust, TypeScript, PHP, Vue, Svelte, Astro, Tailwind, Twig, and more
- **Custom Keybindings**: Ergonomic keymaps with VSCode-like shortcuts and modal editing enhancements
- **Beautiful UI**: Eldritch colorscheme with custom lualine statusline and custom dashboard
- **Development Tools**: Integrated LazyGit with blame, debugging (DAP), REST client, and GitHub CLI
- **Smart File Navigation**: Snacks picker/explorer with hidden file support and mini-files
- **Code Formatting**: Biome formatter with language-specific configurations
- **Git Integration**: Gitsigns with current line blame and inline diff signs

## Prerequisites

Before installing NOE.ED, ensure you have the following:

- **Neovim** >= 0.9.0 (Recommended: latest stable version)

- **Git** >= 2.19.0
- **A Nerd Font** (e.g., [JetBrainsMono Nerd Font](https://www.nerdfonts.com/)) installed and configured in your terminal
- **ripgrep** (for telescope fuzzy finding): `brew install ripgrep` (macOS) or equivalent
- **fd** (for faster file finding): `brew install fd` (macOS) or equivalent
- **Node.js** >= 18.x (for LSP servers and tools)
- **Clipboard tool**: `pbcopy` (macOS), `xclip` or `wl-clipboard` (Linux)

### Optional but Recommended

- **Lazygit** (for Git integration): `brew install lazygit`
- **Language-specific tools**:
  - Go: `go`, `gopls`, `gofumpt`
  - Python: `python`, `pyright` or `basedpyright`
  - Rust: `rustc`, `rust-analyzer`
  - Javascript/TypeScript: `node`, `typescript`, `typescript-language-server`
  - PHP: `php`, `intelephense`
  - Tailwind CSS: `tailwindcss-language-server`

## Installation

### Fresh Installation

1. **Backup your existing Neovim configuration** (if you have one):

   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   mv ~/.local/state/nvim ~/.local/state/nvim.backup
   mv ~/.cache/nvim ~/.cache/nvim.backup
   ```

2. **Clone the repository**:

   ```bash
   git clone https://github.com/edheltzel/noe.ed.git ~/.config/nvim
   ```

3. **Start Neovim**:

   ```bash
   nvim
   ```

   On first launch, lazy.nvim will automatically:
   - Install itself
   - Download and install all plugins
   - Set up language servers

   This may take a few minutes. Wait for all plugins to install.

4. **Restart Neovim** to ensure all plugins are properly loaded.

### Post-Installation

1. **Install language servers** (if not already installed):

   Inside Neovim, run:

   ```vim
   :Mason
   ```

   Then install the LSP servers you need (they'll auto-install for most languages when you open a file).

2. **Check health**:

   ```vim
   :checkhealth
   ```

   This will identify any missing dependencies.

3. **Install additional language support**:

   ```vim
   :LazyExtras
   ```

   Browse and enable additional language packs and utilities.

## Usage

### Getting Started

- **Leader key**: `Space`
- **Exit Insert mode**: `jj` or `jk`
- **Save file**: `<leader>fs` or `:w`
- **Quit**: `<leader>q` or `:q`

### Custom Dashboard

NOE.ED features a custom Snacks dashboard (lua/plugins/snacks.lua:27) with quick access shortcuts:

- `n` - New file
- `r` - Recent files
- `f` - Find file
- `g` - Find text (live grep)
- `o` - Find session
- `d` - Open DOTFILES directory
- `v` - Open NOE.ED config
- `x` - LazyExtras menu
- `l` - Lazy plugin manager
- `q` - Quit

### Essential Keybindings

#### General

| Key | Mode | Description |
|-----|------|-------------|
| `jj` or `jk` | Insert | Exit Insert mode |
| `U` | Normal | Redo |
| `<C-a>` | Normal | Select all |
| `gh` / `gl` | Normal | Jump to beginning/end of line |
| `<Alt-j/k>` or `<Alt-up/down>` | Normal/Visual | Move lines up/down |
| `<Alt-Ctrl-Up>` or `<Alt-Ctrl-d>` | Normal/Visual | Duplicate lines |
| `<Alt-Backspace>` | Insert/Command/Normal | Delete word (macOS style) |
| `<Enter>` | Normal | Toggle code folding |
| `>` / `<` | Visual | Indent right/left and reselect |

#### File Management

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>fs` | Normal | Save file |
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep |
| `<leader>fr` | Normal | Recent files |
| `<leader>e` | Normal | File explorer |

#### Window Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `<C-h/j/k/l>` | Normal | Navigate between splits |
| `<leader>wv` | Normal | Split vertically |
| `<leader>wh` | Normal | Split horizontally |
| `<leader>wd` | Normal | Close window |

#### AI Tools

**Claude Code:**

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>ac` | Normal | Toggle Claude Code |
| `<leader>af` | Normal | Focus Claude Code |
| `<leader>ar` | Normal | Resume Claude session |
| `<leader>aC` | Normal | Continue Claude session |
| `<leader>am` | Normal | Select Claude model |
| `<leader>ab` | Normal | Add current buffer to context |
| `<leader>as` | Visual | Send selection to Claude |
| `<leader>aa` | Normal | Accept diff |
| `<leader>ad` | Normal | Deny diff |

**OpenCode:**

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>ao` | Normal | Launch/Toggle OpenCode |
| `<Ctrl-Alt-a>` | Normal/Visual | Ask OpenCode |
| `<Ctrl-Alt-x>` | Normal/Visual | Execute OpenCode action |
| `<Ctrl-Alt-g>` | Normal/Visual | Add to OpenCode |

**Supermaven:**

| Key | Mode | Description |
|-----|------|-------------|
| `<C-l>` | Insert | Accept suggestion |
| `<C-x>` | Insert | Clear suggestion |
| `<C-j>` | Insert | Accept word |

#### Search & Replace

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>sr` | Normal | Search & Replace (GrugFar) |
| `<leader>nh` | Normal | Clear search highlights |
| `<C-n>` | Normal | Multi-word editing (use `.` to repeat) |

#### Git

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>gg` | Normal | LazyGit (borderless) |
| `<leader>gb` | Normal | Git blame line |
| `<leader>gd` | Normal | Git diff |

**Git Features:**

- Inline current line blame (gitsigns)
- Toggle-able signs for changes
- Integrated LazyGit with borderless UI

#### Terminal

| Key | Mode | Description |
|-----|------|-------------|
| `<C-`>` | Normal/Terminal | Toggle terminal (borderless) |
| `<Esc>` | Terminal | Exit terminal mode to Normal mode |

#### Code Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>jj` | Normal | Flash jump (leap to character) |
| `gd` | Normal | Go to definition |
| `gr` | Normal | Find references |
| `K` | Normal | Hover documentation |

### Configuration Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua     # Plugin manager setup
│   │   ├── options.lua  # Vim options
│   │   ├── keymaps.lua  # Custom keybindings
│   │   └── autocmds.lua # Autocommands
│   └── plugins/
│       ├── languages/   # Language-specific configs
│       ├── themes/      # Theme customizations
│       └── *.lua        # Plugin configurations
├── lazyvim.json         # LazyVim extras configuration
└── lazy-lock.json       # Plugin version lockfile
```

### Enabled LazyVim Extras

This configuration includes the following LazyVim extras (from lazyvim.json:1):

**AI & Coding:**

- Claude Code integration
- Supermaven AI completion
- Mini-surround for text objects
- DAP (Debug Adapter Protocol) core

**Languages:**

- Astro, Docker, Go, Helm, JSON, Markdown
- PHP, Python, Rust, Svelte, Tailwind CSS, Twig
- TypeScript, Vue, YAML, TOML

**Editor & Utilities:**

- Mini-files file manager
- Snacks explorer & picker
- Biome formatting
- GitHub CLI integration
- Mini-hipatterns
- REST client

## Customization

### Adding Plugins

Create a new file in `lua/plugins/`:

```lua
-- lua/plugins/my-plugin.lua
return {
  "author/plugin-name",
  opts = {
    -- plugin options
  }
}
```

### Modifying Keybindings

Edit `lua/config/keymaps.lua`:

```lua
local set = vim.keymap.set
set("n", "<leader>custom", ":MyCommand<CR>", { desc = "My custom command" })
```

### Changing Colorscheme

Edit `lua/plugins/themes/colorscheme.lua`:

```lua
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "your-preferred-theme",
    },
  },
}
```

The current colorscheme is **Eldritch** with custom configuration (lua/plugins/themes/eldritch.lua:1):

- Dim inactive windows enabled
- Dark sidebars and floats
- Non-transparent background

### Disabling Plugins

Add to `lua/plugins/disabled.lua`:

```lua
return {
  { "plugin/name", enabled = false }
}
```

## Key Plugin Configurations

### AI Integrations

**Claude Code** (lua/plugins/ai.lua:27): Official Anthropic integration for Neovim

- Full conversation context management
- Diff preview and acceptance workflow
- Model selection support

**OpenCode** (lua/plugins/ai.lua:51): Alternative AI coding assistant

- Auto-reload support
- Context-aware prompts with `@this`
- Quick action execution

**Supermaven** (lua/plugins/ai.lua:2): AI-powered code completion

- Custom keybindings for suggestion management
- Configurable inline completion
- Filetype ignoring support

### Git Integration

**Gitsigns** (lua/plugins/git.lua:1):

- Current line blame always visible
- Toggle-able change signs
- Inline diff viewing

### File Navigation

**Snacks** (lua/plugins/snacks.lua:1):

- Custom NOE.ED branded dashboard
- Hidden file support in picker/explorer
- Session persistence (always save)
- Image preview support (max width: 100)

## Updating

### Update All Plugins

```vim
:Lazy sync
```

### Update Neovim Configuration

```bash
cd ~/.config/nvim
git pull
```

Then restart Neovim and run `:Lazy sync`.

## Troubleshooting

### Plugins not loading

1. Remove plugin cache:

   ```bash
   rm -rf ~/.local/share/nvim
   rm -rf ~/.local/state/nvim
   ```

2. Restart Neovim and reinstall:

   ```vim
   :Lazy sync
   ```

### LSP not working

1. Check Mason:

   ```vim
   :Mason
   ```

2. Check health:

   ```vim
   :checkhealth
   ```

3. Manually install LSP server:

   ```vim
   :MasonInstall <server-name>
   ```

### Keybindings not working

Ensure you're in the correct mode (Normal, Insert, Visual). Check which-key for available bindings:

```vim
<leader>  (press space and wait)
```

## Resources

- [LazyVim Documentation](https://lazyvim.github.io/)
- [Neovim Documentation](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)

## License

This configuration is licensed under the [Apache License 2.0](LICENSE).

## Acknowledgments

Built on top of [LazyVim](https://github.com/LazyVim/LazyVim) by [@folke](https://github.com/folke).
