defmodule AppEx.Repo do
  use Ecto.Repo,
    otp_app: :app_ex,
    adapter: Ecto.Adapters.Postgres
end
