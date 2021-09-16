# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :timeouts,
  ecto_repos: [Timeouts.Repo]

# Configures the endpoint
config :timeouts, TimeoutsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nWe0VuAjOGFAM6PVRLJzaX66gn5hTqIbW3O9y/Xso/33K3nKj0sG5ofgyWLOWexp",
  render_errors: [view: TimeoutsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Timeouts.PubSub,
  live_view: [signing_salt: "ZPS0ZwMZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
