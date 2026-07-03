return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- Show hidden files globally
        sources = {
          files = {
            hidden = true, -- Ensure the files picker shows dotfiles
            ignored = false, -- Optional: Show .gitignored files
            follow = true, -- Follow symlinks (fixes stow-managed config)
          },
          grep = {
            hidden = true, -- Search in hidden files
            ignored = false,
            follow = true, -- Follow symlinks when grepping
          },
          explorer = {
            hidden = true, -- Show dotfiles in the explorer
            ignored = true,
            follow = true, -- Follow symlinks in the explorer
          },
        },
      },
    },
  },
}
