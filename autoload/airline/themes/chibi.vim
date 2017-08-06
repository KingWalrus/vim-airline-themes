let g:airline#themes#chibi#palette = {}
let g:airline#themes#chibi#palette.accents = {
      \ 'red': [ '#eeooff' , '' , 63, '' , '' ],
      \ }


" Normal mode
let s:N1 = [ '#ee00ff', '#ee00ff' , 165, 86] " mode
let s:N2 = [ '#d11ff9', '#d11ff9' , 255, 93] " info
let s:N3 = [ '#b53ff4', '#b53ff4' , 86, 165] " statusline

let g:airline#themes#chibi#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#chibi#palette.normal_modified = {
      \ 'airline_c': [ '#28dedb' , '#e6db74' , 253, 0, '' ] ,
      \ }


" Insert mode
"let s:I1 = [ '#28dedb' , '#66d9ef' , 86, 201]
let s:I1 = [ '#28dedb' , '#66d9ef' , 86, 165]
let s:I2 = [ '#28dedb' , '#232526' , 86, 164]
let s:I3 = [ '#28dedb' , '#465457' , 57, 163]
"let s:I2 = [ '#28dedb' , '#232526' , 93, 207]
"let s:I3 = [ '#28dedb' , '#465457' , 86, 129]
"
let g:airline#themes#chibi#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#chibi#palette.insert_modified = {
      \ 'airline_c': [ '#080808' , '#66d9ef' , 232 , 81 , '' ] ,
      \ }


" Replace mode
let g:airline#themes#chibi#palette.replace = copy(g:airline#themes#chibi#palette.insert)
let g:airline#themes#chibi#palette.replace.airline_a = [ s:I1[0]   , '#ef5939' , s:I1[2] , 166     , ''     ]
let g:airline#themes#chibi#palette.replace_modified = {
      \ 'airline_c': [ '#080808' , '#ef5939' , 232 , 166 , '' ] ,
      \ }

" Visual mode
let s:V1 = [ '#ee00ff' , '#fd971f' , 0, 86]
let s:V2 = [ '#ee00ff' , '#232526' , 0, 85]
let s:V3 = [ '#ee00ff' , '#465457' , 0 , 84]

let g:airline#themes#chibi#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#chibi#palette.visual_modified = {
      \ 'airline_c': [ '#080808' , '#fd971f' , 232 , 208 , '' ] ,
      \ }


" Inactive
let s:IA = [ '#ee00ff' , '#465457' , 233 , 67 , '' ]
let g:airline#themes#chibi#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#chibi#palette.inactive_modified = {
      \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
      \ }


" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#chibi#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
      \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )

