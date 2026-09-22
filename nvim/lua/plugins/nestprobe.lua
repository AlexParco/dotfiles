return {
  dir = vim.fn.expand('~/private/nestprobe.nvim'),
  name = 'nestprobe.nvim',
  cmd = { 'Nestprobe', 'NestprobeDiscover', 'NestprobeConnect' },
  config = function()
    require('nestprobe').setup({
      connections = {
        -- {
        --   name = 'products',
        --   url  = 'tcp://127.0.0.1:3001',
        --   spec = 'http://127.0.0.1:3000/explorer/spec',
        -- },
      },
    })
  end,
}
