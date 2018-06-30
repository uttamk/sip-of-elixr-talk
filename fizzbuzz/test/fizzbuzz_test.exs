defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "return fizz if divisible by 3" do
    assert Fizzbuzz.run(9) == "fizz"
  end

  test "return buzz if divisible by 5" do
    assert Fizzbuzz.run(10) == "buzz"
  end

  test "return fizzbuzz if divisible by both 3 and 5" do
    assert Fizzbuzz.run(30) == "fizzbuzz"
  end

  test "return number if not divisible by both 3 and 5" do
    assert Fizzbuzz.run(7) == 7
  end
end
