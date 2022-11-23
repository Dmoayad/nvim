local status_ok, vimtex = pcall(require, "vimtex")
if not status_ok then
  return
end

vimtex.setup({

  vim.g.vimtex_view_general_veiwer == 'zathura',
  vim.g.tex_comment_nospell == 1,
  vim.g.vimtex_compiler_latexmk_engines == {
        _ = '-xelatex'
    },
  vim.g.vimtex_compiler_progname == 'nvr',
  vim.g.vimtex_view_general_options == [[--unique file:@pdf\#src:@line@tex]],
  vim.g.vimtex_view_general_options_latexmk == '--unique',

})
