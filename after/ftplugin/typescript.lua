local dap = require "dap"

dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = { os.getenv "HOME" .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
}

dap.configurations.typescript = {
  {
    type = "node2",
    request = "launch",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
    outFiles = { "${workspaceFolder}/dist/**/*.js" }, -- Убедитесь, что правильно указали путь к скомпилированным JS-файлам
  },
}

vim.opt_local.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
