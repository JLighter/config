require('core/core')
require('core/providers')

require('plugins/init')
require('plugins/initConfig')

require('core/appearence')
require('mapping/init')

vim.cmd('source ~/.config/nvim/settings/appearence.vim')

vim.cmd('source ~/.config/nvim/settings/startify.vim')

vim.cmd('source ~/.config/nvim/settings/delimitemate.vim')

vim.cmd('source ~/.config/nvim/settings/fugitive.vim')

vim.cmd('source ~/.config/nvim/settings/shortcuts.vim')

vim.cmd('source ~/.config/nvim/settings/tmux.vim')

vim.cmd('source ~/.config/nvim/settings/copilot.vim')
