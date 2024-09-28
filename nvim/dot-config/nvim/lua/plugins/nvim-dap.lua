return {
  {
    "mfussenegger/nvim-dap",
    opts = {
      adapters = {
        codelldb = {
          type = "server",
          port = "${port}",
          executable = {
            -- CHANGE THIS to your path!
            command = "/home/mark/.local/share/nvim/mason/bin/codelldb",
            args = { "--port", "${port}" },

            -- On windows you may have to uncomment this:
            -- detached = false,
          },
        },
      },
      configurations = {
        c = {
          {
            name = "Launch file",
            type = "codelldb",
            request = "launch",
            program = function()
              local dap = require("dap")
              local path = vim.fn.input({
                prompt = "Path to executable: ",
                default = vim.fn.getcwd() .. "/",
                completion = "file",
              })
              return (path and path ~= "") and path or dap.ABORT
            end,
            cwd = "${workspaceFolder}",
            stopOnEntry = false,
          },
        },
      },
    },
  },
}
