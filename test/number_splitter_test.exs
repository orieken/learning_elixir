defmodule NumberSplitterTest do
  use ExUnit.Case, async: true

  test "sending 10 and 5 " do
    my_list = []
    assert NumberSplitter.split_numbers(10, 5,my_list) == [5, 5]
  end

  test "sending 15 and 5 " do
    my_list = []
    assert NumberSplitter.split_numbers(15, 5,my_list) == [5, 5, 5]
  end

  test "sending 15 and 3" do
    my_list = []
    assert NumberSplitter.split_numbers(15, 3, my_list) == [3, 3, 3, 3, 3]
  end

  test "sending 16 and 3" do
    my_list = []
    assert NumberSplitter.split_numbers(16, 3, my_list) == [3, 3, 3, 3, 3, 1]
  end

  test "sending 17 and 3" do
    my_list = []
    assert NumberSplitter.split_numbers(17, 3, my_list) == [3, 3, 3, 3, 3, 2]
  end

  test "sending 55 and 7" do
    my_list = []
    assert NumberSplitter.split_numbers(55, 7, my_list) ==  [7, 7, 7, 7, 7, 7, 7, 6]
  end
end