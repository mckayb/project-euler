# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

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

  # This takes far too long right now...
  def sum_primes(threshold, current, sum) do
    prime = next_prime(current)
    if (prime < threshold) do
      sum_primes(threshold, prime, sum + prime)
    else
      sum
    end
  end
end

sumOfPrimes = Prime.sum_primes(2000000, 0, 0)
IO.puts sumOfPrimes
