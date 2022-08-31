local opt = vim.opt

local options = {
    number = true,
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true
}

for k,v in pairs(options) do
    opt[k] = v
end
