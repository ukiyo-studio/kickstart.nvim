return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set('n', '<leader>nj', ':Neotree filesystem reveal left toggle<CR>', {})
    vim.keymap.set('n', '<leader>nk', ':Neotree filesystem reveal float toggle<CR>', {})
    vim.keymap.set('n', '<leader>nf', ':Neotree focus<CR>', {})
    vim.keymap.set('n', '<leader>nx', ':Neotree close<CR>', {})
    vim.keymap.set('n', '<leader>nb', ':Neotree buffers float<CR>', {})
    vim.keymap.set('n', '<leader>ng', ':Neotree git_status float<CR>', {})
  end,
}
