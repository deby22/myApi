# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :myApi,
  ecto_repos: [MyApi.Repo]

  config :myApi, MyApi.Guardian,
    issuer: "myApi",
    secret_key: "MUeJSxcpFadYCD5thIA7B9DTGy1u0vIU9bsZM86yaLH/Fbn0fndxlCmqdE+BFnKS"

# Configures the endpoint
config :myApi, MyApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cNn0/1VCbXADKdZda+Q61Chk/6gsbegEab9bGa3Hbhbi2tKzajMXYHLGZQeNHE+j",
  render_errors: [view: MyApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MyApi.PubSub,
  live_view: [signing_salt: "YdALlfpI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
