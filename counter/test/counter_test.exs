defmodule CounterTest do
  use ExUnit.Case
  doctest Counter

  test "initial value" do
    value =
      Counter.init(5)
      |> Counter.value()

    assert value == 5
  end

  test "should increment" do
    value =
      Counter.init(10)
      |> Counter.increment(2)

    assert value == 12
  end
end
