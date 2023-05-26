local M = {}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}
M.undotree = {
  n = {
    ["<leader>u"] = {":UndotreeToggle <CR>", "Toggle undotree"}
  }
}
return M

