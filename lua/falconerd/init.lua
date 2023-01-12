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

