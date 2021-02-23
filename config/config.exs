# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :t2cpay,
  ecto_repos: [T2cpay.Repo]

# Configures the endpoint
config :t2cpay, T2cpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Z/e30//Kj+wYXpSYcHMQtYQoPsoxuXnm3ZLP2iE+pqn6vsLQv/kfQJf9KgfSkl0L",
  render_errors: [view: T2cpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: T2cpay.PubSub,
  live_view: [signing_salt: "15RaD5wQ"]

config :t2cpay, T2cpay.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
