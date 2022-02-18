defmodule ClientTest do
  use ExUnit.Case

  test "cut the word!" do
    assert {:ok, "กา|กา|กา"} == Client.put_delimiters(["กากากา", "|"])
  end
end
