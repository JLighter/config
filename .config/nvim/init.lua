require('core/core')
require('core/providers')

require('core/appearence')
vim.cmd('source ~/.config/nvim/settings/appearence.vim')

require('plugins/init')
require('plugins/initConfig')

require('mapping/init')

vim.cmd('source ~/.config/nvim/settings/startify.vim')

vim.cmd('source ~/.config/nvim/settings/closetag.vim')
vim.cmd('source ~/.config/nvim/settings/delimitemate.vim')

vim.cmd('source ~/.config/nvim/settings/fugitive.vim')

vim.cmd('source ~/.config/nvim/settings/shortcuts.vim')
vim.cmd('source ~/.config/nvim/settings/easymotion.vim')
vim.cmd('source ~/.config/nvim/settings/vimtest.vim')
vim.cmd('source ~/.config/nvim/settings/macros.vim')
vim.cmd('source ~/.config/nvim/settings/telescope.vim')
vim.cmd('source ~/.config/nvim/settings/tmux.vim')
vim.cmd('source ~/.config/nvim/settings/copilot.vim')


