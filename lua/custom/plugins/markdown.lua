return {
  {
    --
    -- :RenderMarkdown | :RenderMarkdown enable - Enable this plugin
    --     Can also be accessed directly through require('render-markdown').enable()
    -- :RenderMarkdown disable - Disable this plugin
    --     Can also be accessed directly through require('render-markdown').disable()
    -- :RenderMarkdown toggle - Switch between enabling & disabling this plugin
    --     Can also be accessed directly through require('render-markdown').toggle()
    -- :RenderMarkdown expand - Increase anti-conceal margin above and below by 1
    --     Can also be accessed directly through require('render-markdown').expand()
    -- :RenderMarkdown contract - Decrease anti-conceal margin above and below by 1
    --     Can also be accessed directly through require('render-markdown').contract()
    --
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  },
}
