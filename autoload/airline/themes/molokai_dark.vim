let s:ct_lightgrey = 253
let s:gui_lightgrey = "#DADADA"
let s:ct_grey = 246
let s:gui_grey = "#949494"
let s:ct_grey2 = 245
let s:gui_grey2 = "#8A8A8A"
let s:ct_grey3 = 102
let s:gui_grey3 = "#878787"
let s:ct_darkgrey = 237
let s:gui_darkgrey = "#3A3A3A"
let s:ct_lightblue = 81
let s:gui_lightblue = "#5FD7FF"
let s:ct_blue = 38
let s:gui_blue = "#00AFD7"
let s:ct_darkblue = 31
let s:gui_darkblue = "#0087AF"
let s:ct_darkpurple = 125
let s:gui_darkpurple = "#AF005F"
let s:ct_lightpurple = 141
let s:gui_lightpurple = "#AF87FF"
let s:ct_red = 197
let s:gui_red = "#FF005F"
let s:ct_brightred = 9
let s:gui_brightred = "#F5163B"
let s:ct_lightorange = 221
let s:gui_lightorange = "#FFD75F"
let s:ct_orange = 208
let s:gui_orange = "#FF8700"
let s:ct_darkorange = 202
let s:gui_darkorange = "#FF5F00"
let s:ct_green = 154
let s:gui_green = "#AFFF00"
let s:ct_white = 15
let s:gui_white = "#FCF4DC"
let s:ct_black = 232
let s:gui_black = "#080808"
let s:ct_pukegreen = 187
let s:gui_pukegreen = "#D7D7AF"
let s:ct_yellow = 222
let s:gui_yellow = "#FFD787"

let g:airline#themes#molokai_dark#palette = {}
let g:airline#themes#molokai_dark#palette.accents = {
      \ 'red': [ s:gui_lightblue , '' , s:ct_lightblue , '' , '' ],
      \ }

" Common Sections"
let s:S2 = [ s:gui_white , s:gui_black , s:ct_white , s:ct_black ] " info
let s:S3 = [ s:gui_white , s:gui_darkgrey , s:ct_white , s:ct_darkgrey  ] " statusline

" Normal mode
" guifg, guibg, ctermfg, ctermbg, opts
let s:N1 = [ s:gui_black , s:gui_darkpurple , s:ct_black, s:ct_darkpurple] " mode

let g:airline#themes#molokai_dark#palette.normal = airline#themes#generate_color_map(s:N1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.normal_modified = {
"      \ 'airline_c': [ '#080808' , '#e6db74' , s:ct_white , 144 , '' ] ,
"      \ }

" Insert mode
let s:I1 = [ s:gui_black , s:gui_darkblue , s:ct_black, s:ct_darkblue ]

let g:airline#themes#molokai_dark#palette.insert = airline#themes#generate_color_map(s:I1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.insert_modified = {
"      \ 'airline_c': [ '#080808' , '#66d9ef' , s:ct_white , 81 , '' ] ,
"      \ }

let s:R1 = [ s:gui_black , s:gui_brightred , s:ct_black , s:ct_brightred ]
let g:airline#themes#molokai_dark#palette.replace = airline#themes#generate_color_map(s:R1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.replace_modified = {
"      \ 'airline_c': [ '#080808' , '#f92672' , s:ct_white , 161 , '' ] ,
"      \ }

" Visual mode
let s:V1 = [ s:gui_black , s:gui_red , s:ct_black, s:ct_red ]

let g:airline#themes#molokai_dark#palette.visual = airline#themes#generate_color_map(s:V1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.visual_modified = {
"      \ 'airline_c': [ '#080808' , '#a6e22e' , s:ct_white , 118 , '' ] ,
"      \ }

" Inactive
let s:I = [ s:gui_white , s:gui_darkgrey , s:ct_white , s:ct_darkgrey , '' ]
let g:airline#themes#molokai_dark#palette.inactive = airline#themes#generate_color_map(s:N1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.inactive_modified = {
"      \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
"      \ }

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#molokai_dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui_lightgrey , s:gui_darkblue , s:ct_lightgrey , s:ct_darkblue  , ''     ] ,
      \ [ s:gui_lightgrey , s:gui_black , s:ct_lightgrey, s:ct_black , ''     ] ,
      \ [ s:ct_black , s:gui_pukegreen , s:ct_black , s:ct_pukegreen , 'bold' ] )
