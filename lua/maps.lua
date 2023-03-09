local keymap = vim.keymap

-- Delete a word backwards 
keymap.set('n','dw', 'vb"_d')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')
-- Select All
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>')

-- move to previous tab
keymap.set('n', 'tp', ':tabp<Return>')

-- move to next tab
keymap.set('n', 'tn', ':tabn<Return>')


-- Split window (barely use)
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window (barely use)
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', 'C-w>h')
keymap.set('', 's<right>', 'C-w>k')

