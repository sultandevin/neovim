---@brief
---
--- https://rubocop.org/
---
--- RuboCop is a Ruby static code analyzer and formatter. It can run in LSP mode
--- to provide diagnostics and code actions.
---
--- Install via gem:
---
--- ```sh
--- gem install rubocop
--- ```

---@type vim.lsp.Config
return {
  cmd = { 'rubocop', '--lsp' },
  filetypes = { 'ruby', 'eruby' },
  root_markers = { '.rubocop.yml', '.rubocop_todo.yml', 'Gemfile', '.git' },
}
