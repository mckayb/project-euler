# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
# What is the 10001st prime number?
defmodule Factors do
  def find(n) do
    Enum.filter(1..div(n, 2), fn(x) -> rem(n, x) === 0 end) ++ [n]
  end
end

defmodule Prime do
  def check(n) do
    Factors.find(n) === [1, n]
  end

  def nth(n) do
    Enum.reduce(1..n, 1, fn(_x, acc) -> next_prime(acc) end)
  end

  def next_prime(n) do
    cond do
      n >= 3 ->
        # This speeds up everything, but makes us require the n === 2 case
        n = n + 2
        if check(n) do
          n
        else
          next_prime(n)
        end
      # For when they're looking for the first prime.
      n < 2 -> 2
      # The jump from 2 to 3
      n === 2 -> 3
    end
  end
end

IO.puts Prime.nth(6)
IO.puts Prime.nth(10001)
