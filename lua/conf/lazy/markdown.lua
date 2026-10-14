return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  --  vim.g.mkdp_browser = "firefox"
  end,
  ft = { "markdown" },

  keys = {
  {
    "<leader>mp",
    function()
      vim.cmd("MarkdownPreview")
    end,
    desc = "Markdown Preview",
    ft = "markdown",
  },
},


--   keys = {
--   {
--     "<leader>mp",
--     "<cmd>MarkdownPreview<CR>",
--     desc = "Markdown Preview",
--     ft = "markdown",
--   },
-- },

}
