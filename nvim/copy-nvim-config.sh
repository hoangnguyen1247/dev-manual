#!/bin/bash

mkdir -p ~/.config/nvim
cat <<EOF > ~/.config/nvim/init.lua
local home = vim.loop.os_homedir()
package.path = package.path .. ";" .. home .. "/dev-manual/nvim/?.lua"

require("options")
require("keymaps")

-- Install lazy.nvim (must be inside ~/.config/nvim or ~/.local/share/nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins from external folder
require("lazy").setup(require("plugins"))

require("lsp")
EOF
