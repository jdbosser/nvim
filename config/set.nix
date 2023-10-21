{

	extraConfigLua = ''

-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("n", "<leader><leader>", function() print("hello world") end)

'';

}
