# easy-replace.nvim

Quickly ind and replace without having to worry about `%s` and escaping characters.


## Installation

```lua
use("nathom/easy-replace.nvim")
```

Two visual mode mappings are automatically installed: `<leader>r` and `<leader>R`.
The first replaces the text selected with the inputted text throughout the file. The second requests
for confirmation before replacing.


## Custom usage

You can call the replacement function with

```lua
require('easy_replace').replace_selection()
```

To ask for confirmation, pass `true` into `replace_selection`.
