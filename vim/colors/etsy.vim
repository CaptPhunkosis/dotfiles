" Vim color scheme

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "etsy"

if has("gui_running")
    highlight Normal        guifg=#DADADA   guibg=#262626
    highlight Cursor        guifg=#262626   guibg=#DADADA

    highlight Comment       guifg=#9E9E9E

    highlight Constant      guifg=#00D700
    highlight String        guifg=#00D700
    highlight Number        guifg=#00D700

    highlight Identifier    guifg=#FFAF00
    highlight Function      guifg=#FF5F00
    
    highlight Statement     guifg=#FF5F00
    highlight Keyword       guifg=#00AFFF
    
    highlight PreProc       guifg=#DADADA
    highlight Include       guifg=#FFDF00
    highlight Define        guifg=#00AFFF

    highlight Type          guifg=#FF5F00
    highlight Ignore        guifg=#9E9E9E
    
    highlight Search        guibg=#262626   guibg=#DADADA
    highlight CursorLine    guibg=#DADADA   guibg=#262626
    highlight LineNr        guifg=#9E9E9E   guibg=#1C1C1C
    highlight NonText       guifg=#9E9E9E   guibg=#1C1C1C
    
else

    set t_Co=256
    highlight Normal        ctermfg=253     ctermbg=235
    highlight Cursor        ctermfg=235     ctermbg=253
    
    highlight Comment       ctermfg=247
    
    highlight Constant      ctermfg=40
    highlight String        ctermfg=40
    highlight Number        ctermfg=40


    highlight Identifier    ctermfg=214
    highlight Function      ctermfg=202
    
    highlight Statement     ctermfg=202
    highlight Keyword       ctermfg=39

    highlight PreProc       ctermfg=253
    highlight Include       ctermfg=220
    highlight Define        ctermfg=39
    
    highlight Type          ctermfg=202
    highlight Ignore        ctermfg=247
    
    highlight Search        ctermfg=235     ctermbg=39
    highlight CursorLine    ctermfg=253     ctermbg=235
    highlight LineNr        ctermfg=247     ctermbg=234
endif
