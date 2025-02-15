return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = { "lua_ls", "tsserver", "html", "cssls", "gopls", "pyright" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({ -- added configuration for gopls
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<C-z>", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<C-k>", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<C-a>", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<C-r>", vim.lsp.buf.rename, {})
      
    end,
  },
}
