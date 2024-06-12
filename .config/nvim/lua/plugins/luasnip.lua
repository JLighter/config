return {
  "L3MON4D3/LuaSnip",
  opts = {
    history = false,
    delete_check_events = "TextChanged",
  },
  keys = {
    { "<tab>", nil, mode = {"i", "s"} },
    { "<s-tab>", nil, mode = { "i", "s" } },
    { "<C-l>", function() require("luasnip").jump(1) end, mode = { "i", "s" } },
    { "<C-h>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
  },
}
