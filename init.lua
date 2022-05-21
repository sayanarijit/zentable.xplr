local function setup()
  local xplr = xplr

  xplr.fn.custom.zentable_path = function(m)
    local slash = ""
    if m.is_dir then
      slash = "/"
    end

    local sym = ""
    if m.is_symlink then
      sym = " -> "

      if m.is_broken then
        sym = sym .. "×"
      else
        sym = sym .. m.symlink.absolute_path

        if m.symlink.is_dir then
          slash = "/"
          sym = sym .. "/"
        end
      end
    end

    return m.prefix
      .. m.tree
      .. m.meta.icon
      .. " "
      .. m.relative_path
      .. slash
      .. sym
      .. m.suffix
  end

  xplr.config.general.table.header.cols = {
    {},
  }

  xplr.config.general.default_ui.prefix = " "
  xplr.config.general.default_ui.suffix = ""

  xplr.config.general.focus_ui.prefix = "▏"
  xplr.config.general.focus_ui.suffix = ""

  xplr.config.general.selection_ui.prefix = "▏"
  xplr.config.general.selection_ui.suffix = ""

  xplr.config.general.focus_selection_ui.prefix = "▍"
  xplr.config.general.focus_selection_ui.suffix = ""

  xplr.config.general.table.row.cols = {
    { format = "custom.zentable_path" },
  }

  xplr.config.general.table.col_widths = {
    { Percentage = 100 },
  }

  xplr.config.general.table.tree = {
    {},
    {},
    {},
  }
end

return { setup = setup }
