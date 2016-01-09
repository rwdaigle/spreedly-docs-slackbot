defmodule SpreedlyDocsSlackbot.ModelCase do
  @moduledoc """
  This module defines the test case to be used by
  model tests.
  Finally, if the test case interacts with the database,
  it cannot be async. For this reason, every test runs
  inside a transaction which is reset at the beginning
  of the test unless the test case is marked as async.
  """

  use ExUnit.CaseTemplate
end
