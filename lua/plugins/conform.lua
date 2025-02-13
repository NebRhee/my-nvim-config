return {
  "stevearc/conform.nvim",
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        go = { 'gofumpt' },
        lua = { 'stylua' },
        javascript = { 'prettierd', 'prettier' },
        typescript = { 'prettierd', 'prettier' },
        javascriptreact = { 'prettierd', 'prettier' },
        typescriptreact = { 'prettierd', 'prettier' },
        json = { 'prettierd', 'prettier' },
        html = { 'htmlbeautifier' },
        css = { 'prettierd', 'prettier' },
        scss = { 'prettierd', 'prettier' }
      }
    })

    vim.keymap.set({ 'n', 'v' }, '<leader>l', function() 
      conform.format({
        lsp_fallback = true,
        async = false, 
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end
}
