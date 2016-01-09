defmodule SpreedlyDocsSlackbot.SearchTest do

  use SpreedlyDocsSlackbot.ModelCase

  test "config" do
    assert Application.get_env(:spreedly_docs_slackbot, :search_api) == SpreedlyDocsSlackbot.Search.Mock
  end
end
