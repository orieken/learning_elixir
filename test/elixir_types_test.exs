defmodule ElixirTypesTests do
  use ExUnit.Case, async: true
  doctest Clamp

  test "atom is equal to atom" do
    assert :foo == :foo
  end

  test "does not upcase first word" do
    assert(Clamp.uppercase("foo") == "foo")
  end

  test "does upcase second word word" do
    assert(Clamp.uppercase("foo bar") == "foo BAR")
  end

  test "upcases every other word" do
    assert(Clamp.uppercase("foo bar baz buz bing bong") == "foo BAR baz BUZ bing BONG")
  end

    test "unvowel does not change first word" do
      assert(Clamp.unvowel("foo") == "foo")
    end

    test "unvowel removed vowels from second word" do
      assert(Clamp.unvowel("foo bar") == "foo br")
    end

    test "unvowel removes every other words vowels" do
      assert(Clamp.unvowel("foo bar baz buz bing bong") == "foo br baz bz bing bng")
    end

    test "list head" do
    my_list = [1,2,3]
    head = hd(my_list)
      assert head == 1
    end
    test "list tail" do
    my_list = [1,2,3]
    tail = tl(my_list)
      assert tail == [2,3]
    end
end