defmodule NumberSplitter do

  def split_numbers(number, interval,list) do
    times = div(number, interval)
    remainder = rem(number, interval)

    new_list = if rem(number, interval) == 0 do
      List.flatten(NumberSplitter.add_number_of_times(interval, times, list))
    else
        some_list = List.flatten(NumberSplitter.add_number_of_times(interval, times, list))
        Enum.reverse([remainder | some_list])
    end

    new_list
  end

  def add_number_of_times(interval, times, list) when times > 0 do
    list = [interval, list]
    NumberSplitter.add_number_of_times(interval, times-1, list)
  end

  def add_number_of_times(_interval, _times, list) do
    list
  end
end
