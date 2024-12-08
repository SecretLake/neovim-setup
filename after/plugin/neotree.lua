vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
vim.keymap.set("n", "<C-c>", ":Neotree close<CR>")

require("neo-tree").setup({
event_handlers = {

  {
    event = "file_open_requested",
    handler = function()
      -- auto close
      -- vim.cmd("Neotree close")
      -- OR
      require("neo-tree.command").execute({ action = "close" })
    end
  },

}
})
