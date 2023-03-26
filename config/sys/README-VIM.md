### Selections:
    ii  | select inner indent
    vip | Select pargraph
    ><  | move selected blocks

### Comment: gc
    gcii | Comment inner indent
  Sorting: gs
    gs2j | Sort down two lines (current + 2 below)
    gsip | Sort the current paragraph
    gsii | Sort the current indentation level

### Wrapping: S
    V+S+${quote}       | Add any wrapping
    ds{$q_to_delete}   | delete quote
    cs{$q_old}{$q_new} | Change quotes
    yssb  or yss       | wrap the entire line in parentheses with

### Align code:
    ga
    vipga
    gaip

# COC Complition:
### COC:
    double <space> | MENU
    K              | docs
    gd             | definition
    gi             | implementatio
    gr             | reference

### View:
  zc |Floding
  :IndentEnable

### Navigation:
  NERDTree: <C-e> 
  FZF:
    <C-w>      :Windows<CR>
    <C-b>      :Buffers<CR>
    <C-f>      :Files<CR>
    <C-a>      :Rg<Cr>
    <C-g>      :Git blame<CR>
    <Leader>h  :History:<CR>
    <Leader>/  :BLines<CR>
    <Leader>'  :Marks<CR>
    <Leader>H  :Helptags<CR>
    <Leader>hh :History<CR>
    'ctrl-q':  function('s:build_quickfix_list'),
    'ctrl-t':  'tab split',
    'ctrl-x':  'split',
    'ctrl-v':  'vsplit'
