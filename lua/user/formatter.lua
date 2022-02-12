require"formatter".setup {
  filetype = {
    python = {
      function()
        return {
          exe = "black",
          args = {vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
          stdin = false
        }
      end
    },
    lua = {
      function()
        return {
          exe = "lua-format",
          args = {
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
            "-i --indent-width=2 --tab-width=2 --keep-simple-control-block-one-line --keep-simple-function-one-line --align-args"
          },
          stdin = false
        }
      end
    },
    rust = {
      function()
        return {exe = "rustfmt", args = {'--emit=stdout'}, stdin = true}
      end
    },
    javascript = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = true
        }
      end
    },
    javascriptreact = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = true
        }
      end
    },
    typescript = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = true
        }
      end
    },
    typescriptreact = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = true
        }
      end
    },
    html = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = true
        }
      end
    },
    css = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = true
        }
      end
    },
    scss = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = true
        }
      end
    },
    json = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote"
          },
          stdin = true
        }
      end
    }
  }
}
vim.api.nvim_exec([[
      augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost * FormatWrite
      augroup END
      ]], false)

