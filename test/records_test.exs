defmodule Person do
  require Record
  Record.defrecord :person, [first_name: "Foo", last_name: "Smith", age: 27]
  #@type person :: record(:person, first_name: String.t, last_name: String.t, age: integer)
end

defmodule User do
  require Record
  Record.defrecord :user, [name: "meg", age: "25"]
end


defmodule RecordTest do
  use ExUnit.Case, async: true
  require Record
  require Person
  require User

  test "creating a record using elixir lang site docs" do
    meg = User.user()
    assert User.user(meg, :name) == "meg"
  end

  test "Trying using a record like a factory" do
    john = Person.person(first_name: "John")
    assert Person.person(john, :first_name) == "John"
  end

end
