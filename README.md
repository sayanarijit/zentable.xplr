# zentable

A clean, distraction free xplr table UI.

[![imagef13d099816205f02.png](https://s6.gifyu.com/images/imagef13d099816205f02.png)](https://gifyu.com/image/O0yX)
[![image247d47b5aed1d889.png](https://s6.gifyu.com/images/image247d47b5aed1d889.png)](https://gifyu.com/image/O0XM)

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
