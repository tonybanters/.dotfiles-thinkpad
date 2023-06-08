-- Packer Install if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootsrap = ensure_packer()

-- Auto reload packer if this file is saved
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    -- Packer manages itself. Like a quine... 
    use("wbthomason/packer.nvim")

    use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

    -- Color theme: Comment out what won't be used?
    -- use("bluz71/vim-moonfly-colors")
    use("catppuccin/nvim")

    -- tmux & split window navigation
    use("christoomey/vim-tmux-navigator")

    -- maximize and restore current window
    use("szw/vim-maximizer")

    -- essential plugins
    use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
    use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)
    -- commenting with gc
    use("numToStr/Comment.nvim")

    -- file explorer
    --use("nvim-tree/nvim-tree.lua")
    -- Disable Nvim-Tree for now. Not liking it.

    -- vs-code like icons
    use("nvim-tree/nvim-web-devicons")

    -- statusline
    use("nvim-lualine/lualine.nvim")

    -- telescope
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

    if packer_bootstrap then
        require("packer").sync()
    end
end)
