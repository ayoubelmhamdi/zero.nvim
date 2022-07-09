#  highlighting, indentation, Incremental selection or folding are disable by default
<details>
<summary> enable highlight for c and rust </summary>

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


<details>
<summary> enable highlight for c only </summary>

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

