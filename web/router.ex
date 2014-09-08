defmodule OpenProxyScanner.Router do
  use Phoenix.Router

  get "/", OpenProxyScanner.PageController, :index, as: :pages

end
