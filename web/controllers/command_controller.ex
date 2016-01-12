defmodule SpreedlyDocsSlackbot.CommandController do
  use SpreedlyDocsSlackbot.Web, :controller

  @search_api Application.get_env(:spreedly_docs_slackbot, :search_api)

  def execute(conn, %{"command" => "/docs", "text" => query}) do
    render(conn, "results.text", query: query, results: search(query))
  end

  def execute(conn, _params), do: conn |> text("I can't do anything with that")

  defp search(query) do
    @search_api.search(query)
  end
end
