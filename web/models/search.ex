defmodule SpreedlyDocsSlackbot.Search do
  use Behaviour

  @doc "Search for the given term"
  defcallback search(query :: String.t) :: [%SpreedlyDocsSlackbot.SearchResult{}]
end
