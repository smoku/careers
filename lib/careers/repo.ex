defmodule Careers.Repo do
  use Ecto.Repo,
    otp_app: :careers,
    adapter: Ecto.Adapters.Postgres
end
