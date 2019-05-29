defmodule Azwus.Repo do
  use Ecto.Repo,
    otp_app: :azwus,
    adapter: Ecto.Adapters.Postgres
end
