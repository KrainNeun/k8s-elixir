# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :app_ex,
  ecto_repos: [AppEx.Repo]

# Configures the endpoint
config :app_ex, AppExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zk8zyFLON4qlY5msxZoa2xn7bm3qjLdazyYYdR2XpTkbv1zxEsMHHYzjr7KhgWqj",
  render_errors: [view: AppExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AppEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
