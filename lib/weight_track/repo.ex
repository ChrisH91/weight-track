defmodule WeightTrack.Repo do
  use Ecto.Repo,
    otp_app: :weight_track,
    adapter: Ecto.Adapters.Postgres
end
