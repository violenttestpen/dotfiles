-- flash screen instead of beep sound
vim.o.visualbell = true

-- change how nvim represents characters on the screen
vim.o.encoding = 'utf-8'

-- set the encoding of files written
vim.o.fileencoding = 'utf-8'

-- show line numbers
vim.o.number = true
vim.o.relativenumber = true

-- set tabs to have 4 spaces
vim.o.ts = 4

-- indent when moving to the next line while writing code
vim.o.autoindent = true

-- expand tabs into space
vim.o.expandtab = true

-- when using the >> or << commands, shift lines by 4 spaces
vim.o.shiftwidth = 4

-- show a visual line under the cursor's current line
-- vim.o.cursorline = true -- buggy

-- show the matching part of the pair for [] {} and ()
vim.o.showmatch = true

vim.o.ruler = true

vim.api.nvim_set_keymap('', '<TAB><TAB>', '<C-W><C-W>', { noremap = true, silent = true })

-- Toggle NERDTree side windows with `CTRL+z`
vim.api.nvim_set_keymap('', '<C-z>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

vim.g.UtilSnipsExpandTrigger = '<TAB>'
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.nvim/plugged')

        -- Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
        Plug 'junegunn/vim-easy-align'

        -- UltiSnips - The ultimate snippet solution for Vim.
        Plug 'SirVer/ultisnips'

        -- VIM Snippets
        Plug 'honza/vim-snippets'

        -- Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
        Plug 'klen/python-mode'

        -- Powerline is a statusline plugin for vim
        Plug 'powerline/powerline'

        Plug 'vim-airline/vim-airline'

        Plug 'tpope/vim-fugitive'

        Plug('fatih/vim-go', { tag = '*' })

        Plug 'preservim/nerdtree'

vim.call('plug#end')


