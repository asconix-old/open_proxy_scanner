defmodule OpenProxyScanner.Supervisor do
  use Supervisor

  def start_link do
    :supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      worker(OpenProxyScanner.Repo, []),
      worker(OpenProxyScanner.Router, [], function: :start)
    ]
    opts = [strategy: :one_for_one, name: OpenProxyScanner.Supervisor]

    supervise(children, opts)
  end
end
