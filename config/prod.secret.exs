use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :spreedly_docs_slackbot, SpreedlyDocsSlackbot.Endpoint,
  secret_key_base: System.get_env("APP_SECRET_KEY_BASE")
