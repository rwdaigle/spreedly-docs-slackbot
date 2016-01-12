defmodule SpreedlyDocsSlackbot.GoogleCseTest do

  use ExUnit.Case, async: true
  alias SpreedlyDocsSlackbot.Search.GoogleCse, as: Google
  alias SpreedlyDocsSlackbot.SearchResult, as: Result

  @moduletag :remote

  test "search results" do
    results = Google.search("stripe purchase")
    assert length(results) == 3
  end
end
