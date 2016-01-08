defmodule SpreedlyDocsSlackbot.Router do
  use SpreedlyDocsSlackbot.Web, :router

  post "/execute", SpreedlyDocsSlackbot.CommandController, :execute
end
