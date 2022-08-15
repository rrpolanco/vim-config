if dein#tap('gruvbox-material')
  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_visual = 'blue background'
  let g:gruvbox_material_menu_selection_background = 'blue'
  if $TERM_PROGRAM ==? 'iTerm.app' || $TERM_PROGRAM ==? 'kitty'
    let g:gruvbox_material_enable_italic = 1
    let g:gruvbox_material_disable_italic_comment = 1
  endif
  colorscheme gruvbox-material
endif
