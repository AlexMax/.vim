" sunburst.vim by AlexMax
"
" A theme based on the Sunburst theme for Textmate, with interface stylings
" reminiscent of Sublime Text 2's Soda Dark theme.
"
" Supports 16-color terminals, 256-color xterms and GUI.  It's most likely
" broken on 88-color rxvt and non-recent versions of vim, patches welcome.
"
" Base colors as defined in the original theme
" Color names courtesy of <http://chir.ag/projects/name-that-color>
"
" Background: #000000 (Black)
" Foreground: #F8F8F8 (Alabaster)
"      Caret: #A7A7A7 (Silver Chalice)
" Invisibles: #CAE2FB (Hawkes Blue) @ 24% opacity
"       Line: #FFFFFF (White) @ 5% opacity
"  Selection: #DDF0FF (Pattens Blue) @ 20% opacity
"
" Interface colors as defined in the original theme
"
" Generic Labels: #CCCCCC (Silver)

" Syntax colors as defined in the original theme
"
"  Comment: #AEAEAE (Silver Chalice)
" Constant: #3387CC (Mariner)
"   Entity: #89BDFF (Malibu)
"  Keyword: #E28964 (Terracotta)
"  Storage: #99CF50 (Conifer)
"   String: #65B042 (Apple)
"  Support: #9B859D (Mamba)
" Variable: #3E87E3 (Royal Blue)
"       Support Function: #DAD085 (Brandy)
"       Support Constant: #CF6A4C (Raw Sienna)
" Preprocessor Directive: #AFC4DB (Pigeon Post)

set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "sunburst"

" Color definitions.
let s:G_Black='#000000'
let s:G_DarkBlue='#0000bb'
let s:G_DarkGreen='#00bb00'
let s:G_DarkGray='#555555'
let s:G_DarkCyan='#00bbbb'
let s:G_DarkRed='#bb0000'
let s:G_DarkMagenta='#bb00bb'
let s:G_DarkYellow='#bbbb00'
let s:G_Gray='#bbbbbb'
let s:G_Blue='#5555ff'
let s:G_Green='#55ff55'
let s:G_Cyan='#55ffff'
let s:G_Red='#ff5555'
let s:G_Magenta='#ff55ff'
let s:G_Yellow='#ffff55'
let s:G_White='#ffffff'

let s:G_Alabaster='#F8F8F8'
let s:G_HawkesBlue24='#30363C'
let s:G_White5='#0C0C0C'
let s:G_PattensBlue20='#2C3033'
let s:G_SilverChalice='#AEAEAE'
let s:G_Mariner='#3387CC'
let s:G_Malibu='#89BDFF'
let s:G_Terracotta='#E28964'
let s:G_Conifer='#99CF50'
let s:G_Apple='#65B042'
let s:G_Mamba='#9B859D'
let s:G_RoyalBlue='#3E87E3'
let s:G_Brandy='#DAD085'
let s:G_PigeonPost='#AFC4DB'

let s:T_Black='0'
let s:T_DarkBlue='1'
let s:T_DarkGreen='2'
let s:T_DarkGray='3'
let s:T_DarkCyan='4'
let s:T_DarkRed='5'
let s:T_DarkMagenta='6'
let s:T_DarkYellow='7'
let s:T_Gray='8'
let s:T_Blue='9'
let s:T_Green='10'
let s:T_Cyan='11'
let s:T_Red='12'
let s:T_Magenta='13'
let s:T_Yellow='14'
let s:T_White='15'

if &t_Co == 256
	let s:T_Alabaster='231'
	let s:T_HawkesBlue24='59'
	let s:T_White5='16'
	let s:T_PattensBlue20='23'
	let s:T_SilverChalice='145'
	let s:T_Mariner='68'
	let s:T_Malibu='111'
	let s:T_Terracotta='173'
	let s:T_Conifer='113'
	let s:T_Apple='71'
	let s:T_Mamba='139'
	let s:T_RoyalBlue='68'
	let s:T_Brandy='186'
	let s:T_PigeonPost='152'
else
	let s:T_Alabaster='White'
	let s:T_HawkesBlue24='DarkGray'
	let s:T_White5='Black'
	let s:T_PattensBlue20='DarkCyan'
	let s:T_SilverChalice='Gray'
	let s:T_Mariner='Blue'
	let s:T_Malibu='Cyan'
	let s:T_Terracotta='Red'
	let s:T_Conifer='Green'
	let s:T_Apple='DarkGreen'
	let s:T_Mamba='Magenta'
	let s:T_RoyalBlue='Blue'
	let s:T_Brandy='Yellow'
	let s:T_PigeonPost='Blue'
endif

" Base vim color scheme
exe 'hi Normal ctermfg='.s:T_Alabaster.' guifg='.s:G_Alabaster.' guibg='.s:G_Black
exe 'hi ColorColumn guibg='.s:G_White5
exe 'hi CursorLine guibg='.s:G_White5
hi clear MatchParen
exe 'hi MatchParen cterm=underline gui=underline'
exe 'hi NonText ctermfg='.s:T_HawkesBlue24.' guifg='.s:G_HawkesBlue24
hi clear Search
exe 'hi Search cterm=underline gui=underline'
exe 'hi SpecialKey ctermfg='.s:T_HawkesBlue24.' guifg='.s:G_HawkesBlue24
exe 'hi Visual ctermbg='.s:T_PattensBlue20.' guibg='.s:G_PattensBlue20

" Base vim syntax highlighting
exe 'hi Comment ctermfg='.s:T_SilverChalice.' gui=Italic guifg='.s:G_SilverChalice
exe 'hi Constant ctermfg='.s:T_Mariner.' guifg='.s:G_Mariner
exe 'hi Delimiter ctermfg='.s:T_Alabaster.' guifg='.s:G_Alabaster
exe 'hi Entity ctermfg='.s:T_Malibu.' guifg='.s:G_Malibu
exe 'hi Identifier cterm=NONE ctermfg='.s:T_RoyalBlue.' guifg='.s:G_RoyalBlue
exe 'hi PreProc ctermfg='.s:T_PigeonPost.' guifg='.s:G_PigeonPost
exe 'hi String ctermfg='.s:T_Apple.' guifg='.s:G_Apple
exe 'hi Special ctermfg='.s:T_Mamba.' guifg='.s:G_Mamba
exe 'hi Statement gui=NONE ctermfg='.s:T_Terracotta.' guifg='.s:G_Terracotta
exe 'hi Type gui=NONE ctermfg='.s:T_Conifer.' guifg='.s:G_Conifer

" Support functions
exe 'hi phpFunctions ctermfg='.s:T_Brandy.' guifg='.s:G_Brandy
exe 'hi pythonBuiltin ctermfg='.s:T_Brandy.' guifg='.s:G_Brandy

" Base vim interface scheme.  Only if we have enough colors, otherwise stick
" with the default vim interface colors.
if has("gui_running") || &t_Co == 256
	exe 'hi Cursor guibg=#A7A7A7'
	exe 'hi StatusLine cterm=bold gui=NONE ctermfg=188 ctermbg=59 guifg=#E6E6E6 guibg=#555555'
	exe 'hi StatusLineNC cterm=underline gui=NONE ctermfg=145 ctermbg=16 guifg=#AAAAAA guibg=#444444'
	exe 'hi TabLineSel cterm=bold gui=NONE ctermfg=188 ctermbg=59 guifg=#E6E6E6 guibg=#555555'
	exe 'hi TabLineFill cterm=NONE gui=NONE ctermfg=145 ctermbg=16 guifg=#AAAAAA guibg=#2B2B2B'
	exe 'hi TabLine cterm=underline gui=NONE ctermfg=145 ctermbg=16 guifg=#AAAAAA guibg=#444444'
	exe 'hi VertSplit cterm=NONE gui=NONE ctermfg=59 guifg=#464646'
endif
