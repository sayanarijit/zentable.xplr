# zentable

A clean, distraction free xplr table UI.

[![image120fe57f1eec4e7f.png](https://s8.gifyu.com/images/image120fe57f1eec4e7f.png)](https://gifyu.com/image/SxTg2)

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
