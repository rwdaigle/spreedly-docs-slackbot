defmodule SpreedlyDocsSlackbot.CommandController do
  use SpreedlyDocsSlackbot.Web, :controller

  def execute(conn, _params) do
    conn
    |> put_format("text")
    |> render(:results, results: [])
  end
end
