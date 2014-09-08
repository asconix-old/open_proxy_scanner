use Mix.Config

config :phoenix, OpenProxyScanner.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  cookies: true,
  session_key: "_open_proxy_scanner_key",
  session_secret: "I78#0W*L%4B=SIMT&1DMLGXG*U)IF!!P!PS&D*JM&5JZF6))0FP4##VM1WRMWZ+76WZ&&^H(S^X(ZOYP3"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


