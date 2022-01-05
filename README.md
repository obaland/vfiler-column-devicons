# vfiler-column-devicons

The devicons column extension plugin for [vfiler.vim](https://github.com/obaland/vfiler.vim).

## Requirements

A [Nerd Font compatible font](https://github.com/ryanoasis/nerd-fonts#font-installation) or [patch your own](https://github.com/ryanoasis/nerd-fonts#font-patcher). Then set your terminal font (or `guifont` if you are using GUI version of Vim).

## Installation
1. Install the Vim plugin with your favorite plugin manager, e.g. [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'obaland/vfiler.vim'
Plug 'obaland/vfiler-column-devicons'
```
2. After installation, create and register a column on the lua script.
```lua
require'vfiler/column'.register(
  require'vfiler/columns/devicons'.new()
)
```
3. Since the column was registered with the name '**devicons**', specify the column at the desired position in the vfiler settings.
```lua
require'vfiler/config'.setup {
  options = {
    columns = 'indent,devicons,name,mode,size,time',
    -- ...
  },
}
```

## Configuration Examples
```lua
-- Register devicons column
require'vfiler/column'.register(
  require'vfiler/columns/devicons'.new()
)

-- vfiler configuration (Explorer style)
require'vfiler/config'.setup {
  options = {
    columns = 'indent,devicons,name',
    auto_cd = true,
    auto_resize = true,
    keep = true,
    layout = 'left',
    width = 30,
  },
}

-- Start vfiler
require'vfiler'.start()
```

## Screenshots
![devicons](https://github.com/obaland/contents/blob/main/vfiler.vim/image-devicons.png?raw=true)

## References
- [vim-devicon](https://github.com/ryanoasis/vim-devicons)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

## License
Paddington is licensed under the MIT license.  
Copyright © 2022, obaland
