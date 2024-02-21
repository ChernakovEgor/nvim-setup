local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  print("Telescope not installed")
  return
end

local actions_setup, actions, builtin = pcall(require, "telescope.actions")
-- local actions_setup, builtin = pcall(require, "telescope.builtin")
if not actions_setup then
  return
end


telescope.setup({
  -- configure custom mappings
  defaults = {
    previewer = true,
    preview_cutoff = 1,
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-qj>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
        --["<C-q>"] = builtin.lsp_references(),
      },
    },
  },
}) 

telescope.load_extension("fzf")
