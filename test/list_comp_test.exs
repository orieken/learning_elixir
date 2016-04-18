defmodule ListCompTests do
  use ExUnit.Case, async: true

  test "list comp doubles list items" do
    my_list = for x <- [1,2,3,4], do: x*2
    assert my_list == [2,4,6,8]
  end

  test "list comp creates list of item and its double" do
    my_list = for x <- [1,2,3,4], do: [x, x*2]
    assert my_list == [[1,2],[2,4],[3,6],[4,8]]
  end
  test "list comp takes only even items from list" do
    my_list = for x <- [1,2,3,4,5,6], rem(x, 2) == 0, do: x
    assert my_list == [2,4,6]
  end
  test "list comp takes only odd items from list" do
    my_list = for x <- [1,2,3,4,5,6], rem(x, 2) == 1, do: x
    assert my_list == [1,3,5]
  end

  test "list comp takes 2 lists and makes a tuple" do
    original_list = [1,2,3,4,5,6]
    my_list = for x <- original_list , y <- Enum.reverse(original_list), do: { x, y }
    assert my_list == [{1, 6}, {1, 5}, {1, 4}, {1, 3}, {1, 2}, {1, 1}, {2, 6}, {2, 5}, {2, 4}, {2, 3}, {2, 2}, {2, 1}, {3, 6}, {3, 5}, {3, 4}, {3, 3}, {3, 2}, {3, 1}, {4, 6}, {4, 5}, {4, 4},{4, 3}, {4, 2}, {4, 1}, {5, 6}, {5, 5}, {5, 4}, {5, 3}, {5, 2}, {5, 1}, {6, 6}, {6, 5}, {6, 4}, {6, 3}, {6, 2}, {6, 1}]
  end
end