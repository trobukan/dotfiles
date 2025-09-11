return {
  defaults = {
    lazy = true,
    version = false,
    cond = nil,
  },
  spec = nil,
  local_spec = nil,
  install = { colorscheme = { "nvchad" } },

  checker = {
    enabled = true,
    frequency = 3600,
    concurrency = 1,
    check_pinned = false,
  },

  git = {
    log = { "-8" },
    timeout = 120,
    url_format = "git@github.com:%s.git",
    filter = true,
    cooldown = 0,
  },
  ui = {
    icons = {
      ft = "",
      lazy = "󰂠 ",
      loaded = "",
      not_loaded = "",
    },
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
      },
    },
  },
}
