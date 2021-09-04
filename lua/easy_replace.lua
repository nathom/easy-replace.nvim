local M = {}

function M.replace_selection(confirm)
    local saved_register = vim.fn.getreg('"')
    vim.cmd([[normal! vgvy]])
    local selection = vim.fn.getreg('"')
    local pattern = vim.fn.escape(selection, "\\/.*'$^~[]")
    local replacement = vim.fn.input("Replace with: ")

    local cmd = "%s/" .. pattern .. "/" .. replacement .. "/g"
    if confirm then
        cmd = cmd .. "c"
    end

    vim.cmd(cmd)

    vim.o.hlsearch = false
    vim.fn.setreg('"', saved_register)
    vim.fn.setreg("/", pattern)
end

return M
