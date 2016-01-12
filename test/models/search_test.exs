defmodule SpreedlyDocsSlackbot.SearchTest do
  use ExUnit.Case, async: true

  test "config" do
    assert Application.get_env(:spreedly_docs_slackbot, :search_api) == SpreedlyDocsSlackbot.Search.Mock
  end
end
