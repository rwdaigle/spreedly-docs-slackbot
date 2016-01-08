defmodule SpreedlyDocsSlackbot.CommandControllerTest do
  use SpreedlyDocsSlackbot.ConnCase

  test "POST /execute" do
    conn =
      conn
      |> put_req_header("accept", "application/x-www-form-urlencoded")
      |> post("/execute")

    assert response(conn, 200) =~ """
      1. Here is a test search result
      http://google.com
      2. And another
      http://spreedly.com
      """
  end
end
