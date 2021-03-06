# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :spreedly_docs_slackbot, SpreedlyDocsSlackbot.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "v6DjA8GLsZzvDDZmn80ezw9FNtT0HwL/e+zKQYXqHgE6bSNoz8g9ao/U7BNOwFLN",
  render_errors: [accepts: ~w(json)],
  pubsub: [name: SpreedlyDocsSlackbot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :spreedly_docs_slackbot, :google_cse_id, System.get_env("GOOGLE_CSE_ID") || "017702608363483260481:mhdgz-b3lju"
config :spreedly_docs_slackbot, :google_api_key, System.get_env("GOOGLE_API_KEY")
config :spreedly_docs_slackbot, :slack_token, System.get_env("SLACK_TOKEN")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
