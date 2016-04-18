defmodule Dictionary do
  @moduledoc false

  def signature(word) do
    chars = String.to_char_list(word)
    sorted = Enum.sort(chars)
    List.to_string(sorted)
  end

  def other_sig(word) do
    String.to_char_list(word) |> Enum.sort |> List.to_string
  end

end