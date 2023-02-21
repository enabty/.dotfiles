-- ####################################################################################
-- ###################################### GENERAL #####################################
-- ####################################################################################
lvim.log.level = "warn"
lvim.format_on_save = true

vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 3 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = false -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8

-- ####################################################################################
-- #################################### KEYMAPPINGS ###################################
-- ####################################################################################

-- &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& General bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Hop bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_anywhere()<cr>", {})

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Minimap Bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lvim.keys.normal_mode["m"] = "<cmd>MinimapToggle<CR>"

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ToggleTerm bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lvim.builtin.which_key.mappings["r"] = {
  name = "+Run Code",
  r = { ":!cargo run %<CR>", "Cargo Run" },
  c = { ":!cargo check<CR>", "Cargo Check" },
  p = { ":!python %<CR>", "Python Run" },
}

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ToggleTerm bindings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm<CR>", "Toggle Term" }

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Telescope Navigation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}


-- ####################################################################################
-- #################################### USER CONFIG ###################################
-- ####################################################################################
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- ####################################################################################
-- #################################### LSP CONFIG ####################################
-- ####################################################################################

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }


-- ####################################################################################
-- ##################################### PLUGINS ######################################
-- ####################################################################################
lvim.plugins = {
  { "simrat39/rust-tools.nvim" },
  { 'phaazon/hop.nvim' },
  { 'lukas-reineke/indent-blankline.nvim' },
  { 'karb94/neoscroll.nvim' },
  { 'norcalli/nvim-colorizer.lua' },
  { 'wfxr/minimap.vim' },
  { 'decaycs/decay.nvim',                 as = 'decay' },
  { 'wuelnerdotexe/vim-enfocado' },
}


-- ####################################################################################
-- ##################################### REQUIRES #####################################
-- ####################################################################################
-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rust Tools %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
require('rust-tools').setup()

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Colorschemes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

require('decay').setup({
  style = 'decayce',
  nvim_tree = {
    contrast = true -- or false to disable tree contrast,
  },
})

vim.g.enfocado_style = 'neon'

lvim.colorscheme = "enfocado"

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Hop %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
require 'hop'.setup()

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Indent Blankline %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  show_end_of_line = true,
  space_char_blankline = " ",
}

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Neoscroll %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
require('neoscroll').setup()

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Colorizer %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
require 'colorizer'.setup()

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Minimap %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
