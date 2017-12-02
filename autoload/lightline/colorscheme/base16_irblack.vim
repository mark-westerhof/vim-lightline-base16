let s:hex00 = "#000000"
let s:hex01 = "#242422"
let s:hex02 = "#484844"
let s:hex03 = "#6c6c66"
let s:hex04 = "#918f88"
let s:hex05 = "#b5b3aa"
let s:hex06 = "#d9d7cc"
let s:hex07 = "#fdfbee"
let s:hex08 = "#ff6c60"
let s:hex09 = "#e9c062"
let s:hex0A = "#ffffb6"
let s:hex0B = "#a8ff60"
let s:hex0C = "#c6c5fe"
let s:hex0D = "#96cbfe"
let s:hex0E = "#ff73fd"
let s:hex0F = "#b18a3d"

let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "10"
  let s:cterm02 = "11"
  let s:cterm04 = "12"
  let s:cterm06 = "13"
  let s:cterm09 = "09"
  let s:cterm0F = "14"
endif

let s:base00 = [s:hex00, s:cterm00]
let s:base01 = [s:hex01, s:cterm01]
let s:base02 = [s:hex02, s:cterm02]
let s:base03 = [s:hex03, s:cterm03]
let s:base04 = [s:hex04, s:cterm04]
let s:base05 = [s:hex05, s:cterm05]
let s:base06 = [s:hex06, s:cterm06]
let s:base07 = [s:hex07, s:cterm07]
let s:base08 = [s:hex08, s:cterm08]
let s:base09 = [s:hex09, s:cterm09]
let s:base0A = [s:hex0A, s:cterm0A]
let s:base0B = [s:hex0B, s:cterm0B]
let s:base0C = [s:hex0C, s:cterm0C]
let s:base0D = [s:hex0D, s:cterm0D]
let s:base0E = [s:hex0E, s:cterm0E]
let s:base0F = [s:hex0F, s:cterm0F]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [[s:base01, s:base0D], [s:base04, s:base02]]
let s:p.insert.left = [[s:base01, s:base0B], [s:base04, s:base02]]
let s:p.visual.left = [[s:base01, s:base0E], [s:base04, s:base02]]
let s:p.replace.left = [[s:base01, s:base08], [s:base04, s:base02]]
let s:p.inactive.left = [[s:base03, s:base01]]

let s:p.normal.middle = [[s:base03, s:base01]]
let s:p.inactive.middle = [[s:base03, s:base01]]

let s:p.normal.right = [[s:base01, s:base0D], [s:base04, s:base02]]
let s:p.insert.right = [[s:base01, s:base0B], [s:base04, s:base02]]
let s:p.visual.right = [[s:base01, s:base0E], [s:base04, s:base02]]
let s:p.replace.right = [[s:base01, s:base08], [s:base04, s:base02]]
let s:p.inactive.right = [[s:base03, s:base01]]

let s:p.normal.error = [[s:base0A, s:base08]]
let s:p.normal.warning = [[s:base08, s:base0A]]

let s:p.tabline.left = [[s:base05, s:base02]]
let s:p.tabline.middle = [[s:base05, s:base01]]
let s:p.tabline.right = [[s:base05, s:base02]]
let s:p.tabline.tabsel = [[s:base02, s:base0A]]

let g:lightline#colorscheme#base16_irblack#palette = lightline#colorscheme#flatten(s:p)
