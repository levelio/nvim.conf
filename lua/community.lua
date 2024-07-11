-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.project.projectmgr-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.completion.copilot-lua" },
}
