defmodule WordProcessingTest do
  use ExUnit.Case
  doctest WordProcessing

  test "greets the world" do
    assert WordProcessing.hello() == :world
  end
end
