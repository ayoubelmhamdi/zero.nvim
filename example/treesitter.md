
#  highlighting, indentation, Incremental selection or folding are disable by default
#### # enable highlight for c and rust  
```lua
use 'config-nvim/treesitter-for-c'
```
<details>
<summary> config  </summary> 

```lua
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust" },
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    disable = { "lua" },
  },
}
```
</details>

#### # enable highlight for c only
```lua
use 'config-nvim/treesitter-for-c'
```
<details>
<summary> config  </summary> 

```lua
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust" },
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    disable = { "lua", "rust" },
  },
}
```

</details>

