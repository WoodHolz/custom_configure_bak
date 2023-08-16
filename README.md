# my_nvim_configure

To restore the backup configuration, copy this configuration file to ~/.config/nvim.

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
