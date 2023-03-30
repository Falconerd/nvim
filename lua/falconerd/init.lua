require("falconerd.packer")
require("nvim-treesitter.install").prefer_git = true
require("falconerd.set")
require("falconerd.remap")
require("falconerd.colors")

vim.api.nvim_create_user_command(
    "Codeforces",
    function()
        local template_file = "/home/falconerd/.config/nvim/templates/codeforces.cpp"
        local f = io.open(template_file, "r")
        local template_contents = f:read("*all")
        f:close()
        vim.api.nvim_buf_set_lines(0, 0, -1, true, vim.split(template_contents, "\n"))
    end,
    { nargs = 0 }
)

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

-- Vimspector
vim.cmd([[
let g:vimspector_sidebar_width = 85
let g:vimspector_bottombar_height = 15
let g:vimspector_terminal_maxwidth = 70
]])
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>
nmap <F12> <cmd>call vimspector#StepOut()<cr>
nmap <F10> <cmd>call vimspector#StepInto()<cr>
]])
map('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>")
map('n', "Dw", ":call vimspector#AddWatch()<cr>")
map('n', "De", ":call vimspector#Evaluate()<cr>")
