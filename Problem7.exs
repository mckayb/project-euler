# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
# What is the 10001st prime number?
defmodule Factors do
  def find(n) do
    floorSqrtN = round(Float.floor(:math.sqrt(n)))
    Enum.filter(1..floorSqrtN, fn(x) -> rem(n, x) === 0 end)
  end
end

defmodule Prime do
  def check(n) do
    Factors.find(n) === [1]
  end

  def nth(n) do
    Enum.reduce(1..n, 1, fn(_x, acc) -> next_prime(acc) end)
  end

  def next_prime(n) do
    n = n + 1
    if check(n) do
      n
    else
      next_prime(n)
    end
  end
end

# IO.puts Prime.nth(6)
IO.puts Prime.nth(10001)
