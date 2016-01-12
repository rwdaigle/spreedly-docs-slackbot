defmodule SpreedlyDocsSlackbot.CommandView do

  use SpreedlyDocsSlackbot.Web, :view
  alias SpreedlyDocsSlackbot.SearchResult, as: Result

  def render("results.text", %{query: query, results: results}) do
    results
    |> Enum.with_index
    |> format
    |> add_header(query)
  end

  defp format([]), do: ""
  defp format([h|t]) do
    String.strip """
      #{format_result(h)}
      #{format(t)}
      """
  end

  defp add_header(results, query) do
    String.strip """
    Your search results for \"#{query}\":
    
    #{results}
    """
  end

  defp format_result({%Result{title: title, description: description, url: url}, index}) do
    title = String.replace(title, " - Spreedly Documentation", "")
    description = String.replace(description, "\n", "")
    String.strip """
      #{index + 1}. *#{title}*: #{description}
      #{url}
      """
  end
end
