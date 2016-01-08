defmodule SpreedlyDocsSlackbot.CommandView do
  use SpreedlyDocsSlackbot.Web, :view

  def render("results.text", _assigns) do
    """
    1. Here is a test search result
    http://google.com
    2. And another
    http://spreedly.com
    """
  end
end
