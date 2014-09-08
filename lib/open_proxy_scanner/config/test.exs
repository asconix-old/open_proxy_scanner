use Mix.Config

config :phoenix, OpenProxyScanner.Router,
  port: 4001,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "6TxKZMauUS91a2OEy36KF8aV1P4XOvk3",
  session_secret: "XEDCl6HHx2oqdGLWYvp4s534rLpj6H1h",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug
