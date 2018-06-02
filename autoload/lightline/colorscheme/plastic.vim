" Lightline theme for plastic

" This color should match the background color of your colorscheme
" as it's used to tie together the active tab to your editor. It's
" only used in the tabline.
let s:syntax_bg    = [ '#21252b', 235 ]

let s:default_bg   = [ '#2e343c', 238 ]
let s:brighter_bg  = [ '#3e4451', 240 ]
let s:brightest_bg = [ '#737c8c', 248 ]

let s:default_fg   = [ '#737c8c', 247 ]
let s:darker_fg    = [ '#5c6370', 244 ]
let s:brighter_fg  = [ '#abb2bf', 252 ]

let s:yellow       = [ '#e5c07b', 180 ]
let s:orange       = [ '#d19a66', 173 ]
let s:red          = [ '#e06c75', 203 ]
let s:magenta      = [ '#e5c07b', 180 ]
let s:blue         = [ '#61afef', 117 ]
let s:green        = [ '#98c379', 119 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Setup color scheme for normal mode
let s:p.normal.left     = [ [ s:default_bg, s:blue, "bold" ], [ s:brighter_fg, s:brighter_bg ] ]
let s:p.normal.right    = [ [ s:default_bg, s:brightest_bg ], [ s:brighter_fg, s:brighter_bg ] ]
let s:p.normal.middle   = [ [ s:default_fg, s:default_bg ] ]
let s:p.normal.error    = [ [ s:default_bg, s:red ] ]
let s:p.normal.warning  = [ [ s:default_bg, s:yellow ] ]

" Only change the bgcolor of the mode section for insert, replace, and visual
let s:p.insert.left     = [ [ s:default_bg, s:green, "bold" ], [ s:brighter_fg, s:brighter_bg ] ]
let s:p.replace.left    = [ [ s:default_bg, s:red, "bold" ], [ s:brighter_fg, s:brighter_bg ] ]
let s:p.visual.left     = [ [ s:default_bg, s:magenta, "bold" ], [ s:brighter_fg, s:brighter_bg ] ]

" Diminish everything on status bar for inactive buffers
let s:p.inactive.left   = [ [ s:default_fg, s:default_bg ], [ s:darker_fg, s:default_bg ] ]
let s:p.inactive.right  = [ [ s:default_fg, s:brighter_bg ], [ s:darker_fg, s:default_bg ] ]
let s:p.inactive.middle = [ [ s:default_fg, s:default_bg ] ]

let s:p.tabline.left    = [ [ s:default_fg, s:brighter_bg ] ]
let s:p.tabline.right   = [ [ s:brighter_fg, s:brighter_bg ] ]
let s:p.tabline.middle  = [ [ s:default_fg, s:default_bg ] ]
let s:p.tabline.tabsel  = [ [ s:brighter_fg, s:syntax_bg ] ]

let g:lightline#colorscheme#plastic#palette = lightline#colorscheme#flatten(s:p)
