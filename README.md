zentable
========

A clean, distraction free xplr table UI.

[![imagef13d099816205f02.png](https://s6.gifyu.com/images/imagef13d099816205f02.png)](https://gifyu.com/image/O0yX)


Installation
------------

### Install manually

- Add the following line in `~/.config/xplr/init.lua`

  ```lua
  package.path = os.getenv("HOME") .. '/.config/xplr/plugins/?/src/init.lua'
  ```

- Clone the plugin

  ```bash
  mkdir -p ~/.config/xplr/plugins

  git clone https://github.com/me/zentable.xplr ~/.config/xplr/plugins/zentable
  ```

- Require the module in `~/.config/xplr/init.lua`

  ```lua
  require("zentable").setup()
  ```
