defmodule OpenProxyScanner.Mixfile do
  use Mix.Project

  def project do
    [ app: :open_proxy_scanner,
      version: "0.0.1",
      elixir:  "~> 1.0.0-rc1",
      elixirc_paths: ["lib", "web"],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { OpenProxyScanner, [] },
      applications: [
        :inets,
        :plug,
        :plug_basic_auth,
        :phoenix,
        :cowboy,
        :logger
      ]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:plug, "~> 0.7.0"},
      {:cowboy, "~> 1.0.0"},
      {:phoenix, "~> 0.4.0"},
      {:postgrex, "~> 0.5.3"},
      {:ecto, github: "elixir-lang/ecto"},
      {:plug_basic_auth, "~> 0.2.0"}
    ]
  end
end
