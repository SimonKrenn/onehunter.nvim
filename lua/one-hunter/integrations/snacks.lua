local colors = require 'one-hunter.colorscheme'
local utils = require 'one-hunter.utils'

local M = {}

function M.highlights()
  return {
    SnacksPicker = { fg = colors.fg, bg = colors.bg_float },
    SnacksPickerNormal = { fg = colors.fg, bg = colors.bg_float },
    SnacksPickerBorder = { fg = colors.gray_border, bg = colors.bg_float },
    SnacksPickerTitle = { fg = colors.pink, bg = colors.bg_float, bold = true },
    SnacksPickerTitleBorder = { fg = colors.pink, bg = colors.bg_float },
    SnacksPickerTitleIcon = { fg = colors.pink, bg = colors.bg_float },
    SnacksPickerTitlePos = { fg = colors.gray_light, bg = colors.bg_float },

    -- Prompt (input area)
    SnacksPickerPrompt = { fg = colors.fg, bg = colors.bg_darker },
    SnacksPickerPromptBorder = {
      fg = colors.gray_border,
      bg = colors.bg_darker,
    },
    SnacksPickerPromptIcon = { fg = colors.pink, bg = colors.bg_darker },
    SnacksPickerPromptTitle = {
      fg = colors.pink,
      bg = colors.bg_darker,
      bold = true,
    },
    SnacksPickerInput = { fg = colors.fg, bg = colors.bg_darker },

    -- Results (list area)
    SnacksPickerList = { fg = colors.fg, bg = colors.bg_float },
    SnacksPickerListBorder = { fg = colors.gray_border, bg = colors.bg_float },
    SnacksPickerListTitle = {
      fg = colors.blue,
      bg = colors.bg_float,
      bold = true,
    },

    -- Preview window
    SnacksPickerPreview = { fg = colors.fg, bg = colors.bg },
    SnacksPickerPreviewBorder = { fg = colors.gray_border, bg = colors.bg },
    SnacksPickerPreviewTitle = { fg = colors.blue, bg = colors.bg, bold = true },
    SnacksPickerPreviewNormal = { fg = colors.fg, bg = colors.bg },

    -- Selection and cursor
    SnacksPickerCursor = {
      fg = colors.fg,
      bg = utils.shade('#F4457D', 0.2, colors.bg_float),
      bold = true,
    },
    SnacksPickerCursorLine = {
      bg = utils.shade('#F4457D', 0.2, colors.bg_float),
    },
    SnacksPickerSelected = {
      fg = colors.pink,
      bg = utils.shade('#F4457D', 0.2, colors.bg_float),
    },
    SnacksPickerMulti = {
      fg = colors.blue,
      bg = utils.shade('#53A1FA', 0.2, colors.bg_float),
    },

    -- Matching text
    SnacksPickerMatch = { fg = colors.pink, bold = true },
    SnacksPickerMatchCurrent = { fg = colors.pink_bright, bold = true },

    -- Item components
    SnacksPickerIcon = { fg = colors.blue },
    SnacksPickerIconDirectory = { fg = colors.blue },
    SnacksPickerIconFile = { fg = colors.fg },
    SnacksPickerIconHidden = { fg = colors.gray_dark },

    -- File-specific
    SnacksPickerFile = { fg = colors.fg },
    SnacksPickerDir = { fg = colors.blue },
    SnacksPickerPath = { fg = colors.gray_light },
    SnacksPickerFilename = { fg = colors.fg },

    -- Grep/search results
    SnacksPickerGrep = { fg = colors.fg },
    SnacksPickerGrepFilename = { fg = colors.blue },
    SnacksPickerGrepLineNr = { fg = colors.yellow },
    SnacksPickerGrepMatch = { fg = colors.pink, bold = true },
    SnacksPickerGrepSeparator = { fg = colors.gray_dark },

    -- Marks and indicators
    SnacksPickerMark = { fg = colors.pink, bold = true },
    SnacksPickerMarked = {
      fg = colors.pink,
      bg = utils.shade('#F4457D', 0.2, colors.bg_float),
    },
    SnacksPickerMarker = { fg = colors.pink, bold = true },

    -- Status and info
    SnacksPickerInfo = { fg = colors.purple },
    SnacksPickerHint = { fg = colors.blue },
    SnacksPickerWarning = { fg = colors.yellow },
    SnacksPickerError = { fg = colors.red },

    -- Footer
    SnacksPickerFooter = { fg = colors.gray_light, bg = colors.bg_darker },
    SnacksPickerFooterBorder = {
      fg = colors.gray_border,
      bg = colors.bg_darker,
    },

    -- Git status indicators
    SnacksPickerGitAdd = { fg = colors.cyan },
    SnacksPickerGitChange = { fg = colors.yellow },
    SnacksPickerGitDelete = { fg = colors.red },
    SnacksPickerGitIgnored = { fg = colors.gray_dark },
    SnacksPickerGitUntracked = { fg = colors.cyan },
    SnacksPickerGitStaged = { fg = colors.green },
    SnacksPickerGitConflict = { fg = colors.purple },

    -- LSP/Diagnostic indicators
    SnacksPickerDiagnosticError = { fg = colors.red },
    SnacksPickerDiagnosticWarn = { fg = colors.yellow },
    SnacksPickerDiagnosticInfo = { fg = colors.purple },
    SnacksPickerDiagnosticHint = { fg = colors.blue },

    -- Special items
    SnacksPickerSpecial = { fg = colors.purple },
    SnacksPickerComment = { fg = colors.gray, italic = true },
    SnacksPickerDeprecated = { fg = colors.gray_dark, strikethrough = true },

    -- Counts and stats
    SnacksPickerCount = { fg = colors.yellow },
    SnacksPickerStats = { fg = colors.gray_light },

    -- Scrollbar
    SnacksPickerScrollbar = { fg = colors.gray_border, bg = colors.bg_visual },
    SnacksPickerScrollbarThumb = { fg = colors.pink, bg = colors.bg_visual },

    -- Help/keybinds
    SnacksPickerHelp = { fg = colors.gray_light, bg = colors.bg_darker },
    SnacksPickerHelpKey = { fg = colors.pink, bold = true },
    SnacksPickerHelpDesc = { fg = colors.fg },
    SnacksPickerHelpSeparator = { fg = colors.gray_dark },

    -- Empty state
    SnacksPickerEmpty = { fg = colors.gray_light, italic = true },
    SnacksPickerEmptyIcon = { fg = colors.gray_dark },

    -- Loading
    SnacksPickerLoading = { fg = colors.blue },
    SnacksPickerSpinner = { fg = colors.pink },

    -- Specific picker types

    -- Buffer picker
    SnacksPickerBuffer = { fg = colors.fg },
    SnacksPickerBufferCurrent = { fg = colors.pink, bold = true },
    SnacksPickerBufferModified = { fg = colors.yellow },
    SnacksPickerBufferReadonly = { fg = colors.red },
    SnacksPickerBufferHidden = { fg = colors.gray_light },
    SnacksPickerBufferInactive = { fg = colors.gray_light },
    SnacksPickerBufferLineNr = { fg = colors.gray_dark },

    -- Command picker
    SnacksPickerCommand = { fg = colors.blue_light, bold = true },
    SnacksPickerCommandDesc = { fg = colors.gray_light },

    -- Colorscheme picker
    SnacksPickerColorscheme = { fg = colors.fg },
    SnacksPickerColorschemeCurrent = { fg = colors.pink, bold = true },

    -- Help picker
    SnacksPickerHelpTag = { fg = colors.blue },
    SnacksPickerHelpSubject = { fg = colors.fg },

    -- Highlight picker
    SnacksPickerHighlight = { fg = colors.fg },
    SnacksPickerHighlightGroup = { fg = colors.blue },

    -- Keymap picker
    SnacksPickerKeymap = { fg = colors.pink, bold = true },
    SnacksPickerKeymapMode = { fg = colors.purple },
    SnacksPickerKeymapDesc = { fg = colors.fg },

    -- LSP picker
    SnacksPickerLsp = { fg = colors.fg },
    SnacksPickerLspKind = { fg = colors.yellow },
    SnacksPickerLspSymbol = { fg = colors.blue_light },
    SnacksPickerLspDetail = { fg = colors.gray_light },

    -- Man pages picker
    SnacksPickerMan = { fg = colors.fg },
    SnacksPickerManSection = { fg = colors.yellow },

    -- Marks picker
    SnacksPickerMarkGlobal = { fg = colors.blue },
    SnacksPickerMarkLocal = { fg = colors.cyan },
    SnacksPickerMarkLine = { fg = colors.fg },

    -- Registers picker
    SnacksPickerRegister = { fg = colors.pink, bold = true },
    SnacksPickerRegisterContent = { fg = colors.fg },
    SnacksPickerRegisterType = { fg = colors.yellow },

    -- Quickfix/Location list
    SnacksPickerQuickfix = { fg = colors.fg },
    SnacksPickerQuickfixPos = { fg = colors.yellow },
    SnacksPickerQuickfixType = { fg = colors.purple },

    -- Recent files
    SnacksPickerRecent = { fg = colors.fg },
    SnacksPickerRecentCwd = { fg = colors.blue },
    SnacksPickerRecentScore = { fg = colors.gray_dark },

    -- Resume
    SnacksPickerResume = { fg = colors.fg },
    SnacksPickerResumeType = { fg = colors.blue },
    SnacksPickerResumeTime = { fg = colors.gray_light },

    -- Undo tree
    SnacksPickerUndo = { fg = colors.fg },
    SnacksPickerUndoTime = { fg = colors.gray_light },
    SnacksPickerUndoState = { fg = colors.blue },
    SnacksPickerUndoCurrent = { fg = colors.pink, bold = true },
  }
end

return M
