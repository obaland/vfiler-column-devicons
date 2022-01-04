local core = require('vfiler/core')
local vim = require('vfiler/vim')

local DeviconColumn = {}

DeviconColumn.configs = {
  icons = {
    selected = '*',
    file = ' ',
    closed_directory = '+',
    opened_directory = '-',
  },
}

local function get_icon_width(icons)
  local width = 0
  for _, icon in ipairs(icons) do
    width = math.max(vim.fn.strwidth(icon), width)
  end
  return width
end

local icon_width = get_icon_width(DeviconColumn.configs.icons)

function DeviconColumn.setup(configs)
  core.table.merge(DeviconColumn.configs, configs)
  icon_width = get_icon_width(DeviconColumn.configs.icons)
end

function DeviconColumn.new()
  local Column = require('vfiler/columns/column')
  local self = core.inherit(DeviconColumn, Column, 'devicons')

  local Syntax = require('vfiler/columns/syntax')
  self._syntax = Syntax.new({
    syntaxes = {
      selected = {
        group = 'vfilerIcon_Selected',
        start_mark = 'i@s\\',
        highlight = 'vfilerSelected',
      },
      file = {
        group = 'vfilerIcon_File',
        start_mark = 'i@f\\',
        highlight = 'vfilerFile',
      },
      directory = {
        group = 'vfilerIcon_Directory',
        start_mark = 'i@d\\',
        highlight = 'vfilerDirectory',
      },
    },
    end_mark = '\\i@',
    ignore_group = 'vfilerIcon_Ignore',
  })
  return self
end

function DeviconColumn:get_text(item, width)
  local iname, sname
  if item.selected then
    iname = 'selected'
    sname = 'selected'
  elseif item.isdirectory then
    iname = item.opened and 'opened_directory' or 'closed_directory'
    sname = 'directory'
  else
    iname = 'file'
    sname = 'file'
  end
  local icon = DeviconColumn.configs.icons[iname]
  icon = icon .. (' '):rep(icon_width - vim.fn.strwidth(icon))
  return self._syntax:surround_text(sname, icon)
end

function DeviconColumn:get_width(items, width)
  return icon_width
end

return DeviconColumn
