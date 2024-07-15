if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "JetBrainsMono Nerd Font",
        -- line spacing
        linespace = 0,
      },
      g = { -- configure vim.g variables
        -- neovide_transparency = 0.8,
        -- configure scaling
        neovide_scale_factor = 1.0,
        -- configure padding
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
      },
    },
    mappings = {
      n = {
        ["<D-s>"] = { ":w!<cr>", desc = "Save File" },
        ["<D-v>"] = { '"+P', desc = "Paste from clipboard" },
      },
      v = {
        ["<D-c>"] = { '"+y', desc = "Copy to clipboard" },
        ["<D-v>"] = { '"+P', desc = "Paste from clipboard" },
      },
      c = {
        ["<D-v>"] = { "<C-R>+", desc = "Paste from clipboard" },
      },
      i = {
        ["<D-v>"] = { '<ESC>l"+Pli', desc = "Paste from clipboard" },
      },
    },
  },
}
