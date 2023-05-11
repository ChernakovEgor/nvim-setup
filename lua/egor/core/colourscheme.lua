-- local status, _ = pcall(vim.cmd, "colorscheme nvimgelion")
-- if not status then
--   print("Colourscheme not found")
--   return
-- end
--
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
  print("Colourscheme not found")
  return
end
