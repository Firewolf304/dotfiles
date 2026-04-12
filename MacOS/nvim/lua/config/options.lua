-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.clipboard = "unnamedplus"

vim.opt.fillchars = {
  horiz = "━",
  horizup = "┻",
  horizdown = "┳",
  vert = "┃",
  vertleft = "┫",
  vertright = "┣",
  verthoriz = "╋",
}

-- tmux setup
if vim.fn.has("macunix") == 1 then
  if vim.env.TMUX then
    vim.g.clipboard = {
      name = "macOS-tmux",
      copy = {
        ["+"] = "reattach-to-user-namespace pbcopy",
        ["*"] = "reattach-to-user-namespace pbcopy",
      },
      paste = {
        ["+"] = "reattach-to-user-namespace pbpaste",
        ["*"] = "reattach-to-user-namespace pbpaste",
      },
      cache_enabled = 0,
    }
  else
    vim.g.clipboard = {
      name = "macOS",
      copy = {
        ["+"] = "pbcopy",
        ["*"] = "pbcopy",
      },
      paste = {
        ["+"] = "pbpaste",
        ["*"] = "pbpaste",
      },
      cache_enabled = 0,
    }
  end
end
