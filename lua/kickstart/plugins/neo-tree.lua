-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree filesystem left toggle<CR>', desc = 'Toggle File Explorer', silent = true },
    { '<leader>r', ':Neotree reveal left<CR>', desc = 'Reveal Current File', silent = true },
    { '<leader>g', ':Neotree git_status float toggle<CR>', desc = 'Toggle Git Status', silent = true },
    { '<leader>n', ':Neotree filesystem float toggle<CR>', desc = 'Toggle Floating Neo-tree', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        position = 'left', -- Default position for regular Neo-tree windows
        popup = {
          size = { height = '80%', width = '50%' }, -- Floating window size
          position = '50%', -- Center the window
          border = 'rounded', -- Use rounded borders for the floating window
        },
      },
    },
  },
}
