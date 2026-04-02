" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)
let lspServers = [
      \ #{
      \   name: 'rust-analyzer',
      \   filetype: ['rust'],
      \   path: 'rust-analyzer',
      \   args: []
      \ },
      \ #{
      \   name: 'jdtls',
      \   filetype: ['java'],
      \   path: 'jdtls',
      \   args: ['--jvm-arg=-Dlog.level=ALL']
      \ },
      \ #{
      \   name: 'intelephense',
      \   filetype: ['php'],
      \   path: 'intelephense',
      \   args: ['--stdio']
      \ },
      \ #{
      \   name: 'pylsp',
      \   filetype: ['python'],
      \   path: 'pylsp',
      \   args: []
      \ },
      \ #{
      \   name: 'html-ls',
      \   filetype: ['html'],
      \   path: 'vscode-html-language-server',
      \   args: ['--stdio']
      \ },
      \ #{
      \   name: 'css-ls',
      \   filetype: ['css', 'scss'],
      \   path: 'vscode-css-language-server',
      \   args: ['--stdio']
      \ },
      \ #{
      \   name: 'lemminx',
      \   filetype: ['xml'],
      \   path: 'lemminx',
      \   args: []
      \ }
      \ ]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType php setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })
