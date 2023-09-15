# Custom_nvim_configure

Based on nvchad.

To restore the backup configuration, copy this configuration file to ~/.config/nvim.

## set relative lines number

1. use the following cmd to enable the shell script

``` shell
sudo chmod +x ./setrn.sh
```

2. use the following cmd to run the shell script

``` shell
sh ./setrn.sh
```

## Custom-added small features/attributes:

* my_auto_save
* my_auto_restore_cursor_position
* my_auto_remove_new_lines_comment

## User-Added plugins:

* wakatime/vim-wakatime
* iamcco/markdown-preview.nvim

## Attention

### If `:MarkdownPreview` not working

if the `iamcco/markdown-preview.nvim`  not working when 
``` vim
:MarkdownPreview
```
use cmd
``` vim
:call mkdp#util#install()
```

### Disable `toggle_themeBtn`

> ~/.local/share/nvim/lazy/ui/lua/nvchad/tabufline/modules.lua

Comment out the `TbToggle_theme` function and the local variable `toggle_themeBtn` like this

``` lua
---------------------------------------------------------- btn onclick functions -------------------------------------------------
...
-- disable toggle_themeBtn
-- vim.cmd "function! TbToggle_theme(a,b,c,d) \n lua require('base46').toggle_theme() \n endfunction"
...

---------------------------------------------------------- components ------------------------------------------------------------
...
M.buttons = function()
  -- disable toggle_themeBtn
  -- local toggle_themeBtn = "%@TbToggle_theme@%#TbLineThemeToggleBtn#" .. vim.g.toggle_theme_icon .. "%X"
  local CloseAllBufsBtn = "%@TbCloseAllBufs@%#TbLineCloseAllBufsBtn#" .. " 󰅖 " .. "%X"
  -- return toggle_themeBtn .. CloseAllBufsBtn
  return CloseAllBufsBtn
end
...
```
