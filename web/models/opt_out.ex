defmodule OpenProxyScanner.OptOut do
  use Ecto.Model

  schema "opt_outs" do
    field :ip_range
    field :email_address
    field :verification_code
    field :notes
  end
end

