local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- 使用keymap替代vim.keymap.set函数
local keymap = vim.keymap.set

-- 使用空格替代leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 模式
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- Normal --
keymap("n", "s", "", opts) -- 取消s原有功能
-- 窗口分屏
keymap("n", "sv", ":vsp<CR>", opts) -- 垂直分屏
keymap("n", "sh", ":sp<CR>", opts) -- 水平分屏
keymap("n", "sc", "<C-w>c", opts) -- 关闭窗口
keymap("n", "so", "<C-w>o", opts) -- 关闭其它窗口
-- 窗口扩大与缩小
keymap("n", "<M-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<M-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<M-Down>", ":resize -2<CR>", opts)
keymap("n", "<M-UP>", ":resize +2<CR>", opts)
keymap("n", "s=", "<C-w>=", opts)
-- 更好的窗口导航
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)
-- 上移、下移行
keymap("n", "<M-k>", ":m .-2<CR>==", opts)
keymap("n", "<M-j>", ":m .+1<CR>==", opts)
-- 上下滚屏
keymap("n", "<C-j>", "6j", opts)
keymap("n", "<C-k>", "6k", opts)
-- nvimtree
keymap('n', '<M-m>', ':NvimTreeToggle<CR>', opts)

-- Insert --
-- 使用jj推出insert mode
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- 左右移动后仍然处于visual模式
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)
-- 上移、下移行
keymap("v", "<M-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<M-k>", ":m '>-2<CR>gv=gv", opts)

-- Visual Block --
-- 上移、下移行块
keymap("x", "<M-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<M-k>", ":m '>-2<CR>gv=gv", opts)

-- bufferline
keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)
