defmodule SpreedlyDocsSlackbot.Search.GoogleCse do

  @behaviour SpreedlyDocsSlackbot.Search
  alias SpreedlyDocsSlackbot.SearchResult, as: Result

  def search(query) do
    query
    |> make_request
    |> parse_results
  end

  defp make_request(query) do
    case HTTPoison.get(url, [], params: params(query)) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body)}
      {:error, %HTTPoison.Response{status_code: status, body: body}} ->
        {:error, "Ruh roh, got a #{status} from Google: #{body}"}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, "Ruh roh, experienced an error: #{reason}"}
    end
  end

  defp parse_results({:error, msg}), do: msg
  defp parse_results({:ok, %{"items" => results}}) do
    results
    |> Enum.slice(0..2)
    |> Enum.map(&parse_result/1)
  end

  defp parse_result(%{"title" => title, "snippet" => description, "link" => url}) do
    %Result{title: title, description: description, url: url}
  end

  defp url, do: "https://www.googleapis.com/customsearch/v1"

  defp params(query) do
    %{
      key: "AIzaSyDLcnqFAn0wymps1wTO0XTHWRL8F9l5vxc",
      cx: "017702608363483260481:mhdgz-b3lju",
      l: 3,
      q: query
    }
  end
end
