-- uncomment this if you want to open nvim with a dir
-- vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]

-- User relative & absolutely line numbers in 'n' & 'i' modes respectively
vim.cmd [[ au InsertEnter * set norelativenumber ]]
vim.cmd [[ au InsertLeave * set relativenumber ]]

-- Latex utilities, auto. compile on save, auto. clean on exit
vim.cmd [[ au BufEnter,BufRead,BufNewFile *.tex :set spell filetype=tex ]]
vim.cmd [[ au BufWritePost *.tex silent !compiler.sh % ]]
vim.cmd [[ au BufDelete,VimLeave *.tex silent !texclear.sh % ]]

-- Don't show any numbers inside terminals
vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]

-- Don't show status line on certain windows
vim.cmd [[ autocmd BufEnter,BufWinEnter,FileType,WinEnter * lua require("core.utils").hide_statusline() ]]

-- Open a file from its last left off position
-- vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- File extension specific tabbing
-- vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
