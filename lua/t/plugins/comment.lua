-- Comment.nvim - Comentar código

return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup()
  end,
}

