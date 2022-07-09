# zero.nvim
demo to use neovim without config, just plugins

1. [Install packer](#install-packer)
2. [Init.lua](#init-lua)
3. [available configs](#available-configs)  

## install packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
## init lua
```lua
return require('packer').startup(function()
  -- instalation
  use 'user/instalation.nvim'
  -- config
  use 'anotheruser/config.nvim'
end)
```

## available configs
  - [ ] [treesitter](https://github.com/)  
  - [ ] [sp-config](https://github.com/)
