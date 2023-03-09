vim.cmd("colorscheme gruvbox")
local options = {
        relativenumber=true,
        number=true,
        tabstop=2,
        showmode=false,
        smartindent=true,
        autoindent=true,
        expandtab=true,
        hlsearch=true,
        splitright=true,
        splitbelow=true,
        backup=false,
        mouse="i",
        pumheight=10,
        ignorecase=true,
        encoding="utf-8",
        wildmenu=true,
        history=100,
        swapfile=false,
        shiftwidth=3,
        termguicolors=true,
}

for opt,value in pairs(options) do
        vim.opt[opt] = value
end


