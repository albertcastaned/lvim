lvim.keys.normal_mode["<Tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<cr>"

local wk = lvim.builtin.which_key

wk.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

wk.mappings["o"] = {
  name = "Symbols",
  o = { "<cmd>SymbolsOutline<cr>", "Toggle Symbols Outline"}
}

wk.mappings["P"] = {
  name = "Persistence",
  s = { "<cmd>lua require('persistence').load()<cr>", "Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}
