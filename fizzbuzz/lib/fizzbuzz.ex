defmodule Fizzbuzz do
  # def run(x) do
  #   cond do
  #     rem(x, 15) == 0 -> "fizzbuzz"
  #     rem(x, 5) == 0 -> "buzz"
  #     rem(x, 3) == 0 -> "fizz"
  #     true -> x
  #   end
  # end

  def run(x) when rem(x, 15) == 0, do: "fizzbuzz"
  def run(x) when rem(x, 5) == 0, do: "buzz"
  def run(x) when rem(x, 3) == 0, do: "fizz"
  def run(x), do: x
end
