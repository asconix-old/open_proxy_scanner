defmodule OpenProxyScanner.Repo.Migrations.CreateOptOuts do
  use Ecto.Migration

  def up do
    "CREATE TABLE opt_outs (id serial primary key, ip_range text, email_address text, verification_code text, notes text);"
  end

  def down do
    "DROP TABLE opt_outs"
  end
end
