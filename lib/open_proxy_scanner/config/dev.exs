use Mix.Config

config :phoenix, OpenProxyScanner.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "3b1W4UDs7bfZ1rl12moA850qH8D3a3Yd",
  session_secret: "m3k0K7ApKNMx7OQSj58Ie5fqQzh03L1z",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug
