lvim.colorscheme = "habamax"
lvim.transparent_window = true
lvim.builtin.lualine.options.theme = "gruvbox"
vim.opt.relativenumber = true -- relative line numbers

-- Format
lvim.format_on_save.enabled = true
-- lvim.format_on_save.pattern = { "*.lua", "*.py" }

lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"



reload("user.plugins").config()
