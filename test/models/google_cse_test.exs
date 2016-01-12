defmodule SpreedlyDocsSlackbot.GoogleCseTest do

  use ExUnit.Case, async: true
  alias SpreedlyDocsSlackbot.Search.GoogleCse, as: Google

  @moduletag :remote

  test "search results" do
    results = Google.search("stripe purchase")
    assert length(results) == 3
  end
end
