defmodule SpreedlyDocsSlackbot.Search do

  @doc "Search for the given term"
  @callback search(query :: String.t) :: [%SpreedlyDocsSlackbot.SearchResult{}]
end
