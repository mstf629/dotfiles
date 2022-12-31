local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


return packer.startup(function(use)
        -- Have packer manage itself
        use { "wbthomason/packer.nvim", as = "packer" } 
        --generate colorscheme form wallpaper
        use { "AlphaTechnolog/pywal.nvim", as = "pywal" } 
        --make highlights color for any hex text
        use { "norcalli/nvim-colorizer.lua", as = "colorizer" } 
        -- make opacity for vim
        use { "xiyaowong/nvim-transparent", as = "transparent" } 
        -- make status bar better  
        use { "nvim-lualine/lualine.nvim", as = "lualine" }
        -- fzf like file manager but its open files in buffers not in new vim
        use { "vijaymarupudi/nvim-fzf" , as = "fzf" } 
        -- make buffer magenger better
        use { "nvim-lua/plenary.nvim" } 
        use { "j-morano/buffer_manager.nvim" }
        -- cmp plugins
        use { "hrsh7th/cmp-nvim-lsp" }
        use { "hrsh7th/cmp-buffer" }
        use { "hrsh7th/cmp-path" }
        use { "hrsh7th/cmp-cmdline" }
        use { "hrsh7th/nvim-cmp" }
        -- snippets
        use { "L3MON4D3/LuaSnip" } --snippet engine
        use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use
        use { "saadparwaiz1/cmp_luasnip" }

end)
