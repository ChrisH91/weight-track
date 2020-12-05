# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :weight_track,
  ecto_repos: [WeightTrack.Repo]

# Configures the endpoint
config :weight_track, WeightTrackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZHZ6oBgER61XO+PhGkY2LhwCVQkEQuM9Bsjn+c5U1N3nbPTb8GqPbvHjZT2QS4aB",
  render_errors: [view: WeightTrackWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WeightTrack.PubSub,
  live_view: [signing_salt: "LGVdzmQS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
