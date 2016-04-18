defmodule Clamp do
  @moduledoc """
  This module allows you to uppercase or unvowel every other word in a string
  """


    @doc """
    Uppercases every other word in a sentence. Example:

    iex> Clamp.uppercase("you are silly")
    "you ARE silly"
    """
  def uppercase(string) do
    transform_every_other_word(string, &uppercaser/1)
  end

  @doc """
    unvowels every other word in a sentence. Example:

    iex> Clamp.unvowel("you are silly")
    "you r silly"
  """
  def unvowel(string) do
    transform_every_other_word(string, &unvoweler/1)
  end


  def transform_every_other_word(string, trans) do
    words = String.split(string)
    words_with_index = Stream.with_index(words)
    transformed_words = Enum.map(words_with_index, trans)
    Enum.join(transformed_words, " ")
  end

  def uppercaser(input) do
    transformer(input, &String.upcase/1)
  end

  def unvoweler(input) do
    transformer(input, fn (word) -> Regex.replace(~r/a|e|i|o|u|/, word, "" ) end)
  end

  def transformer({word, index}, transformation) do
    cond do
      rem(index, 2) == 0 -> word
      rem(index, 2) == 1 -> transformation.(word)
    end
  end

end