local wk = require("which-key")

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({ cmd = 'lazygit', direction = "float" })
  return lazygit:toggle()
end

local mappings = {
  q = {":q<cr>","Quit"},
  Q = {":qa<cr>","Quit all"},
  w = {":w<cr>","Save"},
  s = {":split<cr>","SPLIT"},
  vs = {":vs<cr>","Vertical SPLIT"},
  x = {":bdelete<cr>","Close"},
  E = {":e ~/.config/nvim/init.lua<cr>","Edit config"},
  W = {":e ~/.config/nvim/lua/whichkeyplugin-config/init.lua<cr>","whichkeyplugin-config"},
  t = {
    t = { ":ToggleTerm<cr>", "Split Below" },
    b= { toggle_float, "Floating Terminal" },
    l = { toggle_lazygit, "LazyGit" },
   f = {":Telescope find_files<cr>","Telescope Find files"},
   g = {":Telescope live_grep<cr>","Telescope Live grep files"},
   c = {":Telescope git_commits<cr>","Telescope git commit files"},
   s = {":Telescope git_status<cr>","Telescope git status"},
   m = {":Telescope man_pages<cr>","Telescope man pages"},
  },
  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
    w = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder" },
    W = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder" },
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
    d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
    D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
    r = { '<cmd>lua vim.lsp.buf.references()<cr>', "References" },
    R = { '<cmd>Lspsaga rename<cr>', "Rename" },
    a = { '<cmd>Lspsaga code_action<cr>', "Code Action" },
    e = { '<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics" },
    n = { '<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic" },
    N = { '<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic" }
  }
}

local opts = {  prefix = '<leader>'}       
wk.register(mappings, opts)
