local colors = {
  standardWhite = '#E0E0E0',
  standardBlack = '#34393E',
}

if vim.o.background == 'light' then
  colors.editorBackground = '#ffffff'
  colors.sidebarBackground = '#dddddd'
  colors.popupBackground = '#ffffff'
  colors.floatingWindowBackground = '#ffffff'
  colors.menuOptionBackground = '#ffffff'

  colors.mainText = '#313131'
  colors.emphasisText = '#212121'
  colors.commandText = '#333333'
  colors.inactiveText = '#9e9e9e'
  colors.disabledText = '#d0d0d0'
  colors.lineNumberText = '#a1a1a1'
  colors.selectedText = '#424242'
  colors.inactiveSelectionText = '#757575'

  colors.windowBorder = '#c2c3c5'
  colors.focusedBorder = '#aaaaaa'
  colors.emphasizedBorder = '#999999'

  colors.syntaxFunction = '#3A9BE1'
  colors.syntaxError = '#d6656a'
  colors.syntaxKeyword = '#E3329F'
  colors.errorText = '#d32f2f'
  colors.warningText = '#FF7D00'
  colors.linkText = '#1976d2'
  colors.commentText = '#848484'
  colors.stringText = '#0BA463'
  colors.successText = '#22863a'
  colors.warningEmphasis = '#cd9731'
  colors.specialKeyword = '#800080'
  colors.syntaxOperator = '#a1a1a1'
  colors.foregroundEmphasis = '#000000'
  colors.terminalGray = '#333333'

  colors.bg = '#ffffff'
  colors.bg_dark = '#f0f0f0'
  colors.bg_darker = '#e6e6e6'
  colors.bg_light = '#fafafa'
  colors.bg_visual = '#e0e0e0'
  colors.bg_float = '#ffffff'
else
  colors.editorBackground = '#191d21'
  colors.sidebarBackground = '#191d21'
  colors.popupBackground = '#191d21'
  colors.floatingWindowBackground = '#191d21'
  colors.menuOptionBackground = '#191d21'

  colors.mainText = '#e0e0e0'
  colors.emphasisText = '#fafafa'
  colors.commandText = '#e0e0e0'
  colors.inactiveText = '#484848'
  colors.disabledText = '#848484'
  colors.lineNumberText = '#727272'
  colors.selectedText = '#eaeaea'
  colors.inactiveSelectionText = '#f5f5f5'

  colors.windowBorder = '#2a2a2a'
  colors.focusedBorder = '#444444'
  colors.emphasizedBorder = '#363636'
  colors.syntaxError = '#F44747'
  colors.syntaxFunction = '#43AAF9'
  colors.warningText = '#F9C35A'
  colors.syntaxKeyword = '#F4457D'
  colors.linkText = '#9db1c5'
  colors.stringText = '#5BD1B9'
  colors.warningEmphasis = '#cd9731'
  colors.successText = '#5BD1B9'
  colors.errorText = '#E61F44'
  colors.specialKeyword = '#800080'
  colors.commentText = '#888888'
  colors.syntaxOperator = '#53A1FA'
  colors.foregroundEmphasis = '#ffffff'
  colors.terminalGray = '#5c5c5c'

  colors.bg = '#191d21'
  colors.bg_dark = '#14181b'
  colors.bg_darker = '#101315'
  colors.bg_light = '#1d2226'
  colors.bg_visual = '#34393E'
  colors.bg_float = '#14181B'

  colors.fg = '#E0E0E0'
  colors.fg_dim = '#E0E0E088'
  colors.fg_bright = '#E6E6E6'

  -- Grays
  colors.gray = '#888888'
  colors.gray_dark = '#45505b'
  colors.gray_light = '#9CAAB4'
  colors.gray_border = '#45505b'

  -- Accent colors
  colors.cyan = '#5BD1B9'
  colors.cyan_bright = '#B7F0E5'
  colors.yellow = '#F9C35A'
  colors.blue = '#53A1FA'
  colors.blue_light = '#43AAF9'
  colors.blue_pale = '#9FBDE0'
  colors.blue_bright = '#A7C7ED'
  colors.pink = '#F4457D'
  colors.pink_bright = '#EE808B'
  colors.purple = '#B267E6'
  colors.purple_bright = '#D7C9F0'
  colors.red = '#E61F44'
  colors.red_dark = '#E34234'
  colors.green = '#A6E22E'

end

-- Special
colors.none = 'NONE'

return colors
