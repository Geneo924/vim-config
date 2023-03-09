require('base')
require('highlights')
require('maps')
require('plugins')
require("mason").setup()
require("nvim-autopairs").setup {}
require'lspconfig'.flow.setup{}
require'lspconfig'.clangd.setup{} -- for c++ 
require'lspconfig'.tsserver.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.pyright.setup{} -- for python lsp
require'lspconfig'.html.setup{}
require'lspconfig'.clojure_lsp.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.hls.setup{}
