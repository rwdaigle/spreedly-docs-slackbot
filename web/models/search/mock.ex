defmodule SpreedlyDocsSlackbot.Search.Mock do

  @behaviour SpreedlyDocsSlackbot.Search
  alias SpreedlyDocsSlackbot.SearchResult, as: Result

  def search(query) do
    [
      %Result{title: "First - Spreedly Documentation", description: "This is the first result \nI found",
        url: "http://spreedly.com"},
      %Result{title: "Second", description: "This is the \nsecond result I found",
        url: "http://ryandaigle.com"},
      %Result{title: "Third", description: "This is the third result I found",
        url: "http://yahoo.com"}
    ]
  end
end
