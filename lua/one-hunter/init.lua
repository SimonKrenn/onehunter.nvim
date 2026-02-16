local blink = require 'one-hunter.integrations.blink'
local bufferline = require 'one-hunter.integrations.bufferline'
local colors = require 'one-hunter.colorscheme'
local config = require 'one-hunter.config'
local noice = require 'one-hunter.integrations.noice'
local snacks = require 'one-hunter.integrations.snacks'
local utils = require 'one-hunter.utils'
local theme = {}

local function set_terminal_colors()
  local terminal_bg = config.transparent and colors.none or colors.editorBackground

  vim.g.terminal_color_0 = colors.editorBackground
  vim.g.terminal_color_1 = colors.syntaxError
  vim.g.terminal_color_2 = colors.successText
  vim.g.terminal_color_3 = colors.warningEmphasis
  vim.g.terminal_color_4 = colors.syntaxFunction
  vim.g.terminal_color_5 = colors.syntaxKeyword
  vim.g.terminal_color_6 = colors.linkText
  vim.g.terminal_color_7 = colors.mainText
  vim.g.terminal_color_8 = colors.inactiveText
  vim.g.terminal_color_9 = colors.errorText
  vim.g.terminal_color_10 = colors.stringText
  vim.g.terminal_color_11 = colors.warningText
  vim.g.terminal_color_12 = colors.syntaxOperator
  vim.g.terminal_color_13 = colors.syntaxError
  vim.g.terminal_color_14 = colors.stringText
  vim.g.terminal_color_15 = colors.commentText
  vim.g.terminal_color_background = terminal_bg
  vim.g.terminal_color_foreground = colors.mainText
end

local function set_groups()
  local bg = config.transparent and colors.none or colors.bg
  local bg_darker = config.transparent and colors.none or colors.bg_darker
  local bg_light = config.transparent and colors.none or colors.bg_light
  local bg_float = config.transparent and colors.none or colors.bg_float
  local diff_add = utils.shade(colors.successText, 0.5, colors.editorBackground)
  local diff_delete =
    utils.shade(colors.syntaxError, 0.5, colors.editorBackground)
  local diff_change =
    utils.shade(colors.syntaxFunction, 0.5, colors.editorBackground)
  local diff_text =
    utils.shade(colors.warningEmphasis, 0.5, colors.editorBackground)

  local groups = {
    Normal = { fg = colors.fg, bg = bg },
    NormalFloat = { fg = colors.fg, bg = bg_float },
    NormalNC = { fg = colors.fg, bg = bg },

    -- Cursor
    Cursor = { fg = colors.bg, bg = colors.fg },
    lCursor = { fg = colors.bg, bg = colors.fg },
    CursorIM = { fg = colors.bg, bg = colors.fg },
    TermCursor = { fg = colors.bg, bg = colors.fg },
    TermCursorNC = { fg = colors.bg, bg = colors.gray_dark },

    -- Lines
    CursorLine = { bg = utils.shade('#191d21', 0.5, colors.bg) },
    CursorColumn = { bg = utils.shade('#191d21', 0.5, colors.bg) },
    ColorColumn = { bg = colors.bg_visual },

    -- Line numbers
    LineNr = { fg = colors.gray_dark },
    CursorLineNr = { fg = colors.fg },
    SignColumn = { bg = bg },

    -- Folds
    Folded = { fg = colors.gray_light, bg = colors.bg_visual },
    FoldColumn = { fg = colors.gray_dark, bg = bg },

    -- Search
    CurSearch = { bg = utils.shade('#53A1FA', 0.2, colors.bg) },
    IncSearch = { bg = utils.shade('#53A1FA', 0.4, colors.bg) },
    Search = { bg = utils.shade('#F4457D', 0.2, colors.bg) },

    -- Visual
    Visual = { bg = utils.shade('#53A1FA', 0.4, colors.bg) },
    VisualNOS = { bg = utils.shade('#53A1FA', 0.4, colors.bg) },

    -- Statusline
    StatusLine = { fg = colors.fg, bg = bg_darker },
    StatusLineNC = { fg = colors.gray_dark, bg = bg_darker },

    -- Tabline
    -- TabLine = { fg = colors.fg_dim, bg = '#3ADi434D44' },
    TabLineFill = { bg = bg_light },
    TabLineSel = { fg = colors.fg, bg = bg },

    -- Winbar
    WinBar = { fg = colors.fg, bg = colors.none },
    WinBarNC = { fg = colors.gray_light, bg = colors.none },

    -- Window separators
    WinSeparator = { fg = colors.gray_border },
    VertSplit = { fg = colors.gray_border },

    -- Pmenu (completion menu)
    Pmenu = { fg = colors.fg, bg = colors.bg_visual },
    PmenuSel = { fg = colors.fg, bg = colors.gray_dark },
    PmenuSbar = { bg = colors.bg_visual },
    PmenuThumb = { bg = colors.gray_dark },

    -- Messages
    MsgArea = { fg = colors.fg },
    ModeMsg = { fg = colors.fg, bold = true },
    MoreMsg = { fg = colors.cyan },
    WarningMsg = { fg = colors.yellow },
    ErrorMsg = { fg = colors.red },
    Question = { fg = colors.blue },

    -- Spell
    SpellBad = { sp = colors.red, undercurl = true },
    SpellCap = { sp = colors.yellow, undercurl = true },
    SpellLocal = { sp = colors.cyan, undercurl = true },
    SpellRare = { sp = colors.purple, undercurl = true },

    -- Diff
    DiffAdd = { fg = colors.green, bg = colors.none },
    DiffChange = { fg = colors.yellow, bg = colors.none },
    DiffDelete = { fg = colors.red, bg = colors.none },
    DiffText = { fg = colors.blue, bg = colors.none },

    -- Match
    MatchParen = {
      bg = utils.shade('#F4457D', 0.4, colors.bg),
      fg = colors.blue,
    },

    -- Whitespace
    Whitespace = { fg = colors.bg_visual },
    NonText = { fg = colors.bg_visual },
    SpecialKey = { fg = colors.bg_visual },

    -- Misc
    Conceal = { fg = colors.gray_dark },
    Directory = { fg = colors.blue },
    Title = { fg = colors.blue, bold = true },

    -- Comments
    Comment = { fg = colors.gray, italic = true },
    SpecialComment = { fg = colors.gray },

    -- Strings
    String = { fg = colors.cyan },
    Character = { fg = colors.blue },

    -- Numbers
    Number = { fg = colors.yellow },
    Float = { fg = colors.yellow },
    Boolean = { fg = colors.blue_light },

    -- Constants
    Constant = { fg = colors.blue },

    -- Keywords
    Keyword = { fg = colors.pink, bold = true },
    Conditional = { fg = colors.pink, bold = true },
    Repeat = { fg = colors.pink, bold = true },
    Label = { fg = colors.pink },
    Exception = { fg = colors.pink, bold = true },

    -- Operators
    Operator = { fg = colors.fg },

    -- Delimiters
    Delimiter = { fg = colors.fg },

    -- Identifiers
    Identifier = { fg = colors.fg },

    -- Functions
    Function = { fg = colors.blue_light, bold = true },

    -- Statements
    Statement = { fg = colors.pink, bold = true },

    -- Preprocessor
    PreProc = { fg = colors.pink },
    Include = { fg = colors.pink },
    Define = { fg = colors.pink },
    Macro = { fg = colors.purple },
    PreCondit = { fg = colors.pink },

    -- Types
    Type = { fg = colors.pink, bold = true },
    StorageClass = { fg = colors.blue_light },
    Structure = { fg = colors.pink, bold = true },
    Typedef = { fg = colors.pink, bold = true },

    -- Special
    Special = { fg = colors.yellow },
    SpecialChar = { fg = colors.yellow },
    Tag = { fg = colors.pink },
    Debug = { fg = colors.purple },

    -- Errors
    Error = { fg = colors.red_dark },
    Todo = { fg = colors.purple, bold = true },

    -- Underlined
    Underlined = { underline = true },
  }

  -- integrations
  groups = vim.tbl_extend('force', groups, blink.highlights())
  groups = vim.tbl_extend('force', groups, bufferline.highlights())
  groups = vim.tbl_extend('force', groups, noice.highlights())
  groups = vim.tbl_extend('force', groups, snacks.highlights())
  -- overrides
  groups = vim.tbl_extend(
    'force',
    groups,
    type(config.overrides) == 'function' and config.overrides()
      or config.overrides
  )

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function theme.setup(values)
  setmetatable(
    config,
    { __index = vim.tbl_extend('force', config.defaults, values) }
  )
end

function theme.colorscheme()
  if vim.version().minor < 8 then
    vim.notify(
      'Neovim 0.8+ is required for onehunter colorscheme',
      vim.log.levels.ERROR,
      { title = 'Min Theme' }
    )
    return
  end

  vim.api.nvim_command 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.api.nvim_command 'syntax reset'
  end

  vim.g.VM_theme_set_by_colorscheme = true
  vim.o.termguicolors = true
  vim.g.colors_name = 'onehunter'

  set_terminal_colors()
  set_groups()
end

return theme
