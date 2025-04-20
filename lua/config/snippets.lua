-- console.log
vim.keymap.set('n', 'J', function()
  local word = vim.fn.expand '<cword>' -- Get the word under the cursor
  local log_statement = 'console.log({' .. word .. '})'

  -- Insert the log statement on a new line below
  vim.api.nvim_put({ log_statement }, 'l', true, true)

  -- Move the cursor to the start of the inserted line
  vim.cmd 'normal! kV' -- Select the entire line
end, { noremap = true, silent = true })
