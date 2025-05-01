  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
    return
  end
local dashboard = require "alpha.themes.dashboard"
  dashboard.section.header.val = {
[[                                  __        __        _         __  __                                  ]],
[[                            _____/ /___  __/ /__     (_)____   / /_/ /_  ___                            ]],
[[                           / ___/ __/ / / / / _ \   / / ___/  / __/ __ \/ _ \                           ]],
[[                          (__  ) /_/ /_/ / /  __/  / (__  )  / /_/ / / /  __/                           ]],
[[                         /____/\__/\__, /_/\___/  /_/____/   \__/_/ /_/\___/     __  __    _            ]],
[[  ____ _____  ______      _____  _/____/ / /_____     ___ _   _____  _______  __/ /_/ /_  (_)___  ____ _]],
[[ / __ `/ __ \/ ___/ | /| / / _ \/ ___/  / __/ __ \   / _ \ | / / _ \/ ___/ / / / __/ __ \/ / __ \/ __ `/]],
[[/ /_/ / / / (__  )| |/ |/ /  __/ /     / /_/ /_/ /  /  __/ |/ /  __/ /  / /_/ / /_/ / / / / / / / /_/ / ]],
[[\__,_/_/ /_/____/ |__/|__/\___/_/      \__/\____/   \___/|___/\___/_/   \__, /\__/_/ /_/_/_/ /_/\__, /  ]],
[[                                                                       /____/                  /____/   ]]
}

  dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "󱋡  Recently used files", ":Telescope oldfiles <CR>"),
  }

  local function footer()
    -- Number of plugins
    local datetime = os.date "%d-%m-%Y %H:%M:%S"
    local plugins_text = " "
      .. " plugins"
      .. "   v"
      .. vim.version().major
      .. "."
      .. vim.version().minor
      .. "."
      .. vim.version().patch
      .. "         󰥔  "
      .. datetime

    -- Quote
    local fortune = require "alpha.fortune"
    local quote = table.concat(fortune(), "\n")

    return plugins_text .. "\n" .. quote
  end

  dashboard.section.footer.val = footer()

  dashboard.section.footer.opts.hl = "Type"
  dashboard.section.header.opts.hl = "Include"
  dashboard.section.buttons.opts.hl = "Keyword"

  dashboard.opts.opts.noautocmd = true
  alpha.setup(dashboard.opts)

