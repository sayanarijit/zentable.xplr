# zentable

A clean, distraction free xplr table UI.

[![image3009d116ece8bd45.png](https://s8.gifyu.com/images/image3009d116ece8bd45.png)](https://gifyu.com/image/SxTgo)

## Installation

### Install manually

- Add the following line in `~/.config/xplr/init.lua`

  ```lua
  local home = os.getenv("HOME")
  package.path = home
  .. "/.config/xplr/plugins/?/init.lua;"
  .. home
  .. "/.config/xplr/plugins/?.lua;"
  .. package.path
  ```

- Clone the plugin

  ```bash
  mkdir -p ~/.config/xplr/plugins

  git clone https://github.com/sayanarijit/zentable.xplr ~/.config/xplr/plugins/zentable
  ```

- Require the module in `~/.config/xplr/init.lua`

  ```lua
  require("zentable").setup()
  ```

## Also See

- [tree-view.xplr](https://github.com/sayanarijit/tree-view.xplr)
- [dual-pane.xplr](https://github.com/sayanarijit/dual-pane.xplr)
- [tri-pane.xplr](https://github.com/sayanarijit/tri-pane.xplr)
