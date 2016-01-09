use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :spreedly_docs_slackbot, SpreedlyDocsSlackbot.Endpoint,
  http: [port: 4001],
  server: false

config :spreedly_docs_slackbot, :search_api, SpreedlyDocsSlackbot.Search.Mock

# Print only warnings and errors during test
config :logger, level: :warn
