# nvim

## Treesitter

Run `:TSUpdate` to fix Treesitter issues after a Neovim upgrade

## Keymaps

### Global

| Keymap         | Description                      |
| :------------- | :------------------------------- |
| K              | Hover fold                       |
| za             | Toggle fold                      |
| zR             | Open all fold                    |
| zM             | Close all folds                  |
| Shift+K        | Move highlight visual block up   |
| Shift+J        | Move highlight visual block down |
| Leader+D       | Delete without loosing yank      |
| Leader+P       | Paste from clipboard             |
| Leader+Y       | Yank to clipboard                |
| Leader+O       | Add blank line below             |
| Leader+Shift+O | Add blank line above             |

### Bufferline

| Keymap    | Description     |
| :-------- | :-------------- |
| Tab       | Next buffer     |
| Shift+Tab | Previous buffer |
| Leader+BB | Open buffer     |
| Leader+BD | Delete buffer   |

### Comment

Uses Neovim's built-in commenting.

Normal mode

| Keymap      | Description                                        |
| :---------- | :------------------------------------------------- |
| GCC         | Toggles the current line                           |
| [count]+GCC | Toggles the number of lines given as prefix-count  |
| GC+{motion} | (Op-pending) Toggles the region                    |
| GCGC        | Uncomments the current comment block               |

Visual mode

| Keymap | Description         |
| :----- | :------------------ |
| GC     | Toggles the region  |

Operator-pending mode

| Keymap | Description                                  |
| :----- | :------------------------------------------- |
| GC     | Text object for a comment block (e.g. DGC)   |

### Markdown

Markdown is rendered in-buffer by [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim). It is on by default and shows raw text in insert mode.

| Keymap    | Description             |
| :-------- | :---------------------- |
| Leader+MP | Toggle markdown preview |

### LSP

| Keymap     | Description         |
| :--------- | :------------------ |
| Leader+LT  | Toggle diagnostics  |
| Leader+LA  | Code action         |
| Leader+LR  | Rename              |
| Leader+LD  | Hover documentation |
| Leader+LDD | Goto definition     |
| Leader+LI  | Goto implementation |

### Telescope

| Keymap    | Description         |
| :-------- | :------------------ |
| Leader+FF | Find files          |
| Leader+FB | Find buffers        |
| Leader+FD | Find diagnostics    |
| Leader+FG | Find by grep        |
| Leader+FS | Find cursor string  |
| Leader+FW | Find word in buffer |
| Leader+FH | Find help           |

### Diagnostics & DAP

| Keymap    | Description       |
| :-------- | :---------------- |
| Leader+DB | Toggle breakpoint |
| Leader+DQ | Quit debugging    |
| Leader+DC | Continu debugging |
| Leader+DN | Next line         |
| Leader+DU | Toggle debug ui   |
