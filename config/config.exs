# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :context,
  ecto_repos: [Context.Repo]

# Configures the endpoint
config :context, ContextWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RU8CZGMP4koQ8MfAjBCxCCsNXtoAJbUJdIbSDn0sNL6Q0kxzPZcTAXrjozQliRys",
  render_errors: [view: ContextWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Context.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
