# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :azwus,
  ecto_repos: [Azwus.Repo]

# Configures the endpoint
config :azwus, AzwusWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "12TNWaz8Hh5BapdhxBrZXEiwzEC49RfOM1+AE0lbyBYzguc1sZF2BRlSf9zvFphg",
  render_errors: [view: AzwusWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Azwus.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
