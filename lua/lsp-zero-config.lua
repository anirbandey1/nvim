local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- here you can setup the language servers


-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = require('lsp-zero').cmp_format({ details = true })

require('luasnip.loaders.from_vscode').lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({paths = "./snippets/vs-code-snippets"})
-- or relative to the directory of $MYVIMRC
require("luasnip.loaders.from_snipmate").lazy_load({ paths = "./snippets/snipmate-snippets" })

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer',  keyword_length = 3 },
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        -- ['<C-y>'] = cmp.mapping.confirm({ select = false }),
        -- ['<C-e>'] = cmp.mapping.abort(),
        -- ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        -- ['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
        -- ['<C-p>'] = cmp.mapping(function()
        --     if cmp.visible() then
        --         cmp.select_prev_item({ behavior = 'insert' })
        --     else
        --         cmp.complete()
        --     end
        -- end),
        -- ['<C-n>'] = cmp.mapping(function()
        --     if cmp.visible() then
        --         cmp.select_next_item({ behavior = 'insert' })
        --     else
        --         cmp.complete()
        --     end
        -- end),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    --- (Optional) Show source name in completion menu
    formatting = cmp_format,
})
