#!/bin/bash
mkdir ~/Git/plugin -p

declare -a pkg=(
  "autocmd.nvim"
  "autopair.nvim"
  "c-dap.nvim"
  "cmp.nvim"
  "comment.nvim"
  "dap.nvim"
  "highlight.nvim"
  "keymaping.nvim"
  "lspconfig.nvim"
  "lspkind.nvim"
  "nnn.nvim"
  "null-ls.nvim"
  "set-setting.nvim"
  "statusline.nvim"
  "surround.nvim"
  "test"
  "toglle_terminal.nvim"
  "treesitter-tweek.nvim"
  "treesitter.nvim"
)

for item in ${pkg[@]};do
  cd ~/Git/plugin
  if [[ ! -s "cfg-$item" ]];then
      git clone git@github.com:/config-nvim/cfg-$item cfg-$item
  fi
done
