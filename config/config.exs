# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chatex,
  ecto_repos: [Chatex.Repo]

# Configures the endpoint
config :chatex, ChatexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "harNgNqzfp1LEa8A2xKYqDM8tSoX2g/YtVSU/RjzU7+16TJejGf0CPRnr0mEh+DW",
  render_errors: [view: ChatexWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chatex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
