defmodule OpenProxyScanner.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres, env: Mix.env

  def conf(:dev),
    do: parse_url "ecto://ops@localhost/ops_dev"

  def conf(:test),
    do: parse_url "ecto://ops@localhost/ops_test?size=1&max_overflow=0"

  def conf(:prod),
    do: parse_url(System.get_env("DATABASE_URL")) ++ [lazy: false]

  def priv do
    app_dir(:open_proxy_scanner, "priv/repo")
  end
end
