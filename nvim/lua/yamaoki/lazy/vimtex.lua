return {
  "lervag/vimtex",
  lazy = false, -- don't lazy load VimTeX
  tag = 'v2.17',
  init = function()
    -- Enable filetype plugins and indentation
    vim.cmd([[
      filetype plugin indent on
      syntax enable
    ]])

    -- VimTeX settings
    vim.g.vimtex_view_method = 'general'
    if vim.fn.has('unix') == 1 then
      if vim.fn.has('linux') then
        if vim.fn.executable('okular') then
          vim.g.vimtex_view_general_viewer = 'okular'
          vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
        else
          vim.g.vimtex_view_general_viewer = 'xdg-open'
        end
      end
    elseif vim.fn.has('win32') == 1 then
      if vim.fn.executable('okular') then
        vim.g.vimtex_view_general_viewer_method = 'okular'
          vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
      else
        vim.g.vimtex_view_general_viewer_method = 'start ""'
      end
    end


    vim.g.vimtex_quickfix_enabled = 0

    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      callback = 1,
      continuous = 1,
      executable = 'latexmk',
      options = {
        '-silent',
        '-synctex=1',
      },
    }
    end
}

