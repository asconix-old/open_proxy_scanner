use Mix.Config

config :phoenix, OpenProxyScanner.Router,
  port: System.get_env("PORT"),
  ssl: false,
  cookies: true,
  session_key: "wcVx4k8qgDzfCtStK0w1cC8933cVlSwS",
  session_secret: "i6pJ1M3tG7kN1z72lEfRzbl78arB8nTL"

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  level: :error

import_config "#{Mix.env}.exs"
