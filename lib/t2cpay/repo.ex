defmodule T2cpay.Repo do
  use Ecto.Repo,
    otp_app: :t2cpay,
    adapter: Ecto.Adapters.Postgres
end
