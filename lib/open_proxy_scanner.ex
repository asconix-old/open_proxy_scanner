defmodule OpenProxyScanner do
  use Application

  def start(_type, _args) do
    {:ok, pid} = OpenProxyScanner.Supervisor.start_link
  end
end
