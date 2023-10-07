# nvim

## Treesitter

Run `:TSUpdate` to fix Treesitter issues after a Neovim upgrade

## Keymaps

### Global

| Keymap         | Description                      |
| :------------- | :------------------------------- |
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

Normal mode

| Keymap              | Description                                                        |
| :------------------ | :----------------------------------------------------------------- |
| GCC                 | Toggles the current line using linewise comment                    |
| GBC                 | Toggles the current line using blockwise comment                   |
| [count]+GCC         | Toggles the number of line given as a prefix-count using linewise  |
| [count]+GBC         | Toggles the number of line given as a prefix-count using blockwise |
| GC+[count]+{motion} | (Op-pending) Toggles the region using linewise comment             |
| GB+[count]+{motion} | (Op-pending) Toggles the region using blockwise comment            |

Visual mode

| Keymap | Description                                |
| :----- | :----------------------------------------- |
| GC     | Toggles the region using linewise comment  |
| GB     | Toggles the region using blockwise comment |

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
