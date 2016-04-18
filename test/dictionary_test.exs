defmodule DictionaryTest do
  use ExUnit.Case, async: true

  test "signature sorts a word" do
    word = Dictionary.signature("xray")
    assert word == "arxy"
  end

  test "signature sorts a word with pipes" do
    word = Dictionary.other_sig("xray")
    assert word == "arxy"
  end
end