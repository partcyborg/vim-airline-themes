let s:ct_grey = 102
let s:ct_darkgrey = 237
let s:ct_lightblue = 38
let s:ct_darkblue = 31
let s:ct_darkpurple = 125
let s:ct_lightpurple = 141
let s:ct_red = 197
let s:ct_brightred = 9
let s:ct_orange = 208
let s:ct_darkorange = 202
let s:ct_green = 154
let s:ct_white = 15
let s:ct_black = 232

let g:airline#themes#molokai_dark#palette = {}
let g:airline#themes#molokai_dark#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }

" Common Sections"
let s:S2 = [ '#f8f8f0' , '#232526' , s:ct_white , s:ct_black ] " info
let s:S3 = [ '#f8f8f0' , '#465457' , s:ct_white , s:ct_darkgrey  ] " statusline

" Normal mode
" guifg, guibg, ctermfg, ctermbg, opts
let s:N1 = [ '#080808' , '#e6db74' , s:ct_black, s:ct_darkpurple] " mode

let g:airline#themes#molokai_dark#palette.normal = airline#themes#generate_color_map(s:N1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.normal_modified = {
"      \ 'airline_c': [ '#080808' , '#e6db74' , s:ct_white , 144 , '' ] ,
"      \ }

" Insert mode
let s:I1 = [ '#080808' , '#66d9ef' , s:ct_black, s:ct_darkblue ]

let g:airline#themes#molokai_dark#palette.insert = airline#themes#generate_color_map(s:I1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.insert_modified = {
"      \ 'airline_c': [ '#080808' , '#66d9ef' , s:ct_white , 81 , '' ] ,
"      \ }

let s:R1 = [ '#080808' , '#a6e22e' , s:ct_black , s:ct_brightred ]
let g:airline#themes#molokai_dark#palette.replace = airline#themes#generate_color_map(s:R1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.replace_modified = {
"      \ 'airline_c': [ '#080808' , '#f92672' , s:ct_white , 161 , '' ] ,
"      \ }

" Visual mode
let s:V1 = [ '#080808' , '#f92672' , s:ct_black, s:ct_red ]

let g:airline#themes#molokai_dark#palette.visual = airline#themes#generate_color_map(s:V1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.visual_modified = {
"      \ 'airline_c': [ '#080808' , '#a6e22e' , s:ct_white , 118 , '' ] ,
"      \ }

" Inactive
let s:I = [ '#1b1d1e' , '#465457' , s:ct_white , s:ct_darkgrey , '' ]
let g:airline#themes#molokai_dark#palette.inactive = airline#themes#generate_color_map(s:N1, s:S2, s:S3)
"let g:airline#themes#molokai_dark#palette.inactive_modified = {
"      \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
"      \ }

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#molokai_dark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
      \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )
