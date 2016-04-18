defmodule FizzbuzzTest do
  use ExUnit.Case, async: true

  test "input 1 gives 1" do
    assert FizzBuzz.calc(1) == 1
  end

  test "input 3 gives fizz" do
    assert FizzBuzz.calc(3) == 'fizz'
  end

  test "input 9 gives fizz" do
    assert FizzBuzz.calc(9) == 'fizz'
  end

  test "input 10 gives buzz" do
    assert FizzBuzz.calc(10) == 'buzz'
  end

  test "input 5 gives buzz" do
    assert FizzBuzz.calc(5) == 'buzz'
  end

  test "input 15 gives buzz" do
    assert FizzBuzz.calc(15) == 'fizzbuzz'
  end

  test "input 150 gives buzz" do
    assert FizzBuzz.calc(150) == 'fizzbuzz'
  end
end

