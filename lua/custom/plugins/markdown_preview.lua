return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  build = 'cd app && npx --yes yarn install',
  init = function()
    vim.g.mkdp_filetypes = { 'markdown', 'asciidoc' }
    vim.g.mkdp_preview_options = { uml = { server = 'https://plantuml.corpuls.local' } }
  end,
  ft = { 'markdown' },
}
