# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, OpenProxyScanner.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_open_proxy_scanner_key",
  session_secret: "I78#0W*L%4B=SIMT&1DMLGXG*U)IF!!P!PS&D*JM&5JZF6))0FP4##VM1WRMWZ+76WZ&&^H(S^X(ZOYP3",
  catch_errors: true,
  debug_errors: false,
  error_controller: OpenProxyScanner.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
