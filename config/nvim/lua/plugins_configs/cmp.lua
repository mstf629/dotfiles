local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
   local col = vim.fn.col "." - 1
   return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local kind_icons = {
  Text = "T",
  Method = "M",
  Function = "F",
  Variable = "V",
  Class = "C",
  Module = "Mo",
  Keyword = "K",
  Snippet = "S",
  Color = "Co",
  File = "F",
}

cmp.setup({
   snippet={
      expand = function(args)
          luasnip.lsp_expand(args.body) -- For `luasnip` users.
      end,
   },
   window = {
      documentation = cmp.config.window.bordered(),
   },
   sources = {
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
   },
   mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm { select = true },
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
         if cmp.visible() then
            cmp.select_next_item()
         else
            fallback()
         end
      end),
   }),
   formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        -- Kind icons
        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
        vim_item.menu = ({
          luasnip = "[Snippet]",
          buffer = "[Buffer]",
          path = "[Path]",
        })[entry.source.name]
        return vim_item
      end,
  },
})
