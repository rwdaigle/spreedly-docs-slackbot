defmodule SpreedlyDocsSlackbot.CommandControllerTest do
  use SpreedlyDocsSlackbot.ConnCase

  test "POST /execute" do
    conn =
      conn
      |> put_req_header("accept", "application/x-www-form-urlencoded")
      |> post("/execute", [command: "/docs", text: "stripe purchase"])

    assert response(conn, 200) =~ String.strip """
      1. *First*: This is the first result I found
      http://spreedly.com
      2. *Second*: This is the second result I found
      http://ryandaigle.com
      3. *Third*: This is the third result I found
      http://yahoo.com
      """
  end
end
