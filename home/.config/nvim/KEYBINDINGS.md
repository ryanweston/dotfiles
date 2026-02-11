# Neovim Keybindings Reference

Quick reference for all keybindings in this LazyVim config.
Leader key is `Space`. Keybindings come from LazyVim defaults
plus the extras and plugins listed in `lazyvim.json`.

---

## General

| Key | Mode | Action |
|---|---|---|
| `<Space>` | n | Which-key (shows all leader bindings) |
| `<Esc>` | n | Clear search highlight |
| `jk` or `jj` | i | Exit insert mode (if mapped) |
| `u` | n | Undo |
| `<C-r>` | n | Redo |
| `.` | n | Repeat last action |

## Files & Search (Telescope)

| Key | Mode | Action |
|---|---|---|
| `<leader>ff` | n | Find files |
| `<leader>fr` | n | Recent files |
| `<leader>fb` | n | Buffers |
| `<leader>/` | n | Live grep (search in project) |
| `<leader>sw` | n | Search current word |
| `<leader>sh` | n | Help tags |
| `<leader>sk` | n | Keymaps |
| `<leader>sc` | n | Commands |
| `<leader>s:` | n | Command history |
| `<leader>s/` | n | Search history |
| `<leader>sn` | n | Notifications |

## File Explorer (Neo-tree)

| Key | Mode | Action |
|---|---|---|
| `<leader>e` | n | Toggle explorer |
| `<leader>fe` | n | Explorer (root dir) |
| `<leader>fE` | n | Explorer (cwd) |

Inside Neo-tree:

| Key | Action |
|---|---|
| `<CR>` / `o` | Open file/folder |
| `a` | Add file |
| `d` | Delete |
| `r` | Rename |
| `c` | Copy |
| `m` | Move |
| `p` | Paste |
| `y` | Copy path |
| `/` | Filter |
| `H` | Toggle hidden files |

## Buffers (bufferline)

| Key | Mode | Action |
|---|---|---|
| `<S-h>` | n | Previous buffer |
| `<S-l>` | n | Next buffer |
| `<leader>bd` | n | Delete buffer |
| `<leader>bo` | n | Delete other buffers |
| `<leader>bl` | n | Delete buffers to the left |
| `<leader>br` | n | Delete buffers to the right |
| `<leader>bp` | n | Toggle pin |
| `<leader>bP` | n | Delete non-pinned buffers |
| `<leader>bb` | n | Switch to other buffer |

## Windows

| Key | Mode | Action |
|---|---|---|
| `<C-h>` | n | Go to left window |
| `<C-j>` | n | Go to lower window |
| `<C-k>` | n | Go to upper window |
| `<C-l>` | n | Go to right window |
| `<leader>ws` | n | Split window below |
| `<leader>wv` | n | Split window right |
| `<leader>wd` | n | Delete window |
| `<leader>wm` | n | Maximize window |
| `<C-Up>` | n | Increase height |
| `<C-Down>` | n | Decrease height |
| `<C-Left>` | n | Decrease width |
| `<C-Right>` | n | Increase width |

## LSP

| Key | Mode | Action |
|---|---|---|
| `gd` | n | Go to definition |
| `gD` | n | Go to declaration |
| `gr` | n | References |
| `gi` | n | Go to implementation |
| `gy` | n | Go to type definition |
| `K` | n | Hover documentation |
| `gK` | n | Signature help |
| `<C-k>` | i | Signature help (insert mode) |
| `<leader>ca` | n, v | Code action |
| `<leader>cr` | n | Rename symbol |
| `<leader>cf` | n, v | Format |
| `<leader>cl` | n | LSP info |
| `<leader>cA` | n | Source action |
| `]d` | n | Next diagnostic |
| `[d` | n | Previous diagnostic |
| `]e` | n | Next error |
| `[e` | n | Previous error |
| `]w` | n | Next warning |
| `[w` | n | Previous warning |

## Completion (blink.cmp)

| Key | Mode | Action |
|---|---|---|
| `<C-n>` | i | Next item |
| `<C-p>` | i | Previous item |
| `<C-y>` | i | Accept completion |
| `<C-e>` | i | Cancel |
| `<C-b>` | i | Scroll docs up |
| `<C-f>` | i | Scroll docs down |
| `<Tab>` | i, s | Next snippet placeholder |
| `<S-Tab>` | i, s | Previous snippet placeholder |

## Git (gitsigns)

| Key | Mode | Action |
|---|---|---|
| `]h` | n | Next hunk |
| `[h` | n | Previous hunk |
| `<leader>ghs` | n, v | Stage hunk |
| `<leader>ghr` | n, v | Reset hunk |
| `<leader>ghS` | n | Stage buffer |
| `<leader>ghu` | n | Undo stage hunk |
| `<leader>ghR` | n | Reset buffer |
| `<leader>ghp` | n | Preview hunk |
| `<leader>ghb` | n | Blame line |
| `<leader>ghd` | n | Diff |
| `<leader>ghD` | n | Diff ~ |
| `<leader>gg` | n | Lazygit |
| `<leader>gl` | n | Git log |

## Flash (Motions)

| Key | Mode | Action |
|---|---|---|
| `s` | n, x, o | Flash search |
| `S` | n, x, o | Flash treesitter |
| `r` | o | Remote flash |
| `R` | o, x | Treesitter search |
| `<C-s>` | c | Toggle flash in search |

## Treesitter

| Key | Mode | Action |
|---|---|---|
| `<C-Space>` | n | Start incremental selection |
| `<C-Space>` | x | Expand selection (node) |
| `<BS>` | x | Shrink selection (node) |

Text objects:

| Key | Mode | Action |
|---|---|---|
| `af` / `if` | o, x | Function (outer/inner) |
| `ac` / `ic` | o, x | Class (outer/inner) |
| `aa` / `ia` | o, x | Parameter (outer/inner) |

## Surround (mini.surround)

| Key | Mode | Action |
|---|---|---|
| `gsa` | n | Add surround |
| `gsd` | n | Delete surround |
| `gsr` | n | Replace surround |
| `gsf` | n | Find surround (right) |
| `gsF` | n | Find surround (left) |
| `gsh` | n | Highlight surround |

## Comments (ts-comments)

| Key | Mode | Action |
|---|---|---|
| `gcc` | n | Toggle line comment |
| `gc` | v | Toggle comment (selection) |
| `gbc` | n | Toggle block comment |
| `gb` | v | Toggle block comment (selection) |

## Diagnostics (Trouble)

| Key | Mode | Action |
|---|---|---|
| `<leader>xx` | n | Diagnostics (trouble) |
| `<leader>xX` | n | Buffer diagnostics |
| `<leader>xL` | n | Location list |
| `<leader>xQ` | n | Quickfix list |
| `]q` | n | Next quickfix item |
| `[q` | n | Previous quickfix item |

## Find & Replace (grug-far)

| Key | Mode | Action |
|---|---|---|
| `<leader>sr` | n | Search and replace |

## Yanky (Yank Ring)

| Key | Mode | Action |
|---|---|---|
| `p` | n, x | Put (yanky) |
| `P` | n, x | Put before (yanky) |
| `]p` | n | Cycle forward through yank ring |
| `[p` | n | Cycle backward through yank ring |

## TODO Comments

| Key | Mode | Action |
|---|---|---|
| `]t` | n | Next TODO |
| `[t` | n | Previous TODO |
| `<leader>st` | n | Search TODOs |
| `<leader>sT` | n | Search TODO/FIX/FIXME |

## Terminal & UI

| Key | Mode | Action |
|---|---|---|
| `<leader>ft` | n | Terminal (root dir) |
| `<leader>fT` | n | Terminal (cwd) |
| `<C-/>` | n | Toggle terminal |
| `<C-_>` | n | Toggle terminal (alt) |
| `<leader>L` | n | Open Lazy (plugin manager) |
| `<leader>cm` | n | Open Mason (LSP installer) |

## Sessions (persistence)

| Key | Mode | Action |
|---|---|---|
| `<leader>qs` | n | Restore session |
| `<leader>ql` | n | Restore last session |
| `<leader>qd` | n | Don't save current session |
| `<leader>qq` | n | Quit all |

---

## Leader Key Groups

| Prefix | Category |
|---|---|
| `<leader>b` | Buffers |
| `<leader>c` | Code / LSP |
| `<leader>f` | Files / find |
| `<leader>g` | Git |
| `<leader>q` | Quit / sessions |
| `<leader>s` | Search |
| `<leader>w` | Windows |
| `<leader>x` | Diagnostics (Trouble) |

## Enabled LazyVim Extras

- `coding.yanky` — yank ring and improved paste
- `editor.neo-tree` — file explorer
- `lang.json` — JSON schema validation
- `lang.typescript` — TypeScript/JavaScript LSP
- `lang.vue` — Vue language support
- `linting.eslint` — ESLint integration
- `util.dot` — Dotfile editing support
