use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, OpenProxyScanner.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_open_proxy_scanner_key",
  session_secret: "I78#0W*L%4B=SIMT&1DMLGXG*U)IF!!P!PS&D*JM&5JZF6))0FP4##VM1WRMWZ+76WZ&&^H(S^X(ZOYP3"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

