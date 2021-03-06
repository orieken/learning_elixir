defmodule FizzBuzz do

  def calc(input) do
    cond do
      rem(input,15) == 0 -> 'fizzbuzz'
      rem(input,5) == 0 -> 'buzz'
      rem(input,3) == 0 -> 'fizz'
      true -> input
    end
  end

  def calc2(input) when rem(input,15) == 0, do: 'fizzbuzz'
  def calc2(input) when rem(input, 5) == 0, do: 'buzz'
  def calc2(input) when rem(input, 3) == 0, do: 'fizz'
  def calc2(input) when true, do: input

end

