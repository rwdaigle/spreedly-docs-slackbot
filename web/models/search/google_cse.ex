defmodule SpreedlyDocsSlackbot.Search.GoogleCse do

  defp search do
    case HTTPoison.get("https://www.googleapis.com/customsearch/v1") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body}
      {:ok, %HTTPoison.Response{status_code: status}} ->
        {:error, "Ruh roh, got a #{status} from Google"}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, "Ruh roh, experienced an error: #{reason}"}
    end
  end
end
