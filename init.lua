local paint = nil
if xplr.util.paint then
  paint = xplr.util.paint
else
  paint = function(s, _)
    return s
  end
end

local lscolor = nil
if xplr.util.lscolor then
  lscolor = xplr.util.lscolor
else
  lscolor = function(_)
    return {}
  end
end

local style_mix = nil
if xplr.util.style_mix then
  style_mix = xplr.util.style_mix
else
  style_mix = function(_)
    return {}
  end
end

local shell_escape = nil
if xplr.util.shell_escape then
  shell_escape = xplr.util.shell_escape
else
  shell_escape = function(s)
    return s
  end
end

local shorten = nil
if xplr.util.shorten then
  shorten = xplr.util.shorten
else
  shorten = function(s)
    return s
  end
end

local function setup()
  local xplr = xplr

  xplr.fn.custom.zentable_path = function(m)
    local nl = paint("\\n", { add_modifiers = { "Italic", "Dim" } })
    local r = m.tree .. m.prefix
    local style = lscolor(m.absolute_path)
    style = style_mix({ m.style, style })

    if m.meta.icon == nil then
      r = r .. ""
    else
      r = r .. m.meta.icon .. " "
    end

    local rel = m.relative_path
    if m.is_dir then
      rel = rel .. "/"
    end
    r = r .. paint(shell_escape(rel), style)

    r = r .. m.suffix .. " "

    if m.is_symlink then
      r = r .. "-> "

      if m.is_broken then
        r = r .. "×"
      else
        local symlink_path = shorten(m.symlink.absolute_path)
        if m.symlink.is_dir then
          symlink_path = symlink_path .. "/"
        end
        r = r .. symlink_path:gsub("\n", nl)
      end
    end

    return r
  end

  xplr.config.general.table.header.cols = {
    {},
  }

  xplr.config.general.default_ui.prefix = " "
  xplr.config.general.default_ui.suffix = ""

  xplr.config.general.focus_ui.prefix = "│"
  xplr.config.general.focus_ui.suffix = ""

  xplr.config.general.selection_ui.prefix = "▍"
  xplr.config.general.selection_ui.suffix = ""

  xplr.config.general.focus_selection_ui.prefix = "▌"
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
