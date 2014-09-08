use Mix.Config

config :phoenix, OpenProxyScanner.Router,
  port: System.get_env("PORT"),
  ssl: false,
  cookies: true,
  session_key: "DD8Z5FO3zhcfU39e7wU5iV5bGRq7O3EK",
  session_secret: "8fDSFIOA82P9tp57g7MV9iNGbSFV6VjE",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  level: :error
