-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

cmp.setup {
   snippet = {
      expand = function(args)
         luasnip.lsp_expand(args.body)
      end,
   },
   mapping = cmp.mapping.preset.insert {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete({
         config = {
            sources = {
               { name = 'vsnip' }
            }
         }
      }),
      ['<CR>'] = cmp.mapping.confirm {
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      },
      ['<Tab>'] = cmp.mapping(function(fallback)
         if cmp.visible() then
            cmp.select_next_item()
         elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
         else
            fallback()
         end
      end, { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
         if cmp.visible() then
            cmp.select_prev_item()
         elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
         else
            fallback()
         end
      end, { 'i', 's' }),
   },
   sources = {
      { name = 'luasnip' },
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
   },
   window = {
      documentation = cmp.config.window.bordered()
   },
   formatting = {
      fields = { 'menu', 'abbr', 'kind' },
      -- format = function(entry, item)
      --    local menu_icon = {
      --       nvim_lsp = 'λ',
      --       luasnip = '⋗',
      --       buffer = 'Ω',
      --       path = '🖫',
      --    }

      --    item.menu = menu_icon[entry.source.name]
      --    return item
      -- end,
   },
}
