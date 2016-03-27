# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

defmodule Factors do
  def find(n) do
    sqrtN = trunc(:math.sqrt(n))
    Enum.reduce(2..sqrtN, [1, n], fn(x, acc) ->
      if (rem(n, x) === 0) do
        acc ++ [x, div(n, x)]
      else
        acc
      end
    end)
  end
end

defmodule Prime do
  # We only need to go up to sqrt(n) to determine if
  # a number is prime or not.
  def check(n) do
    Factors.find(n) === [1, n]
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

  def sum_primes(threshold, current, sum) do
    prime = next_prime(current)
    if (prime < threshold) do
      sum_primes(threshold, prime, sum + prime)
    else
      sum
    end
  end
end

# IO.inspect Factors.findNew(12)
sumOfPrimes = Prime.sum_primes(2000000, 1, 0)
# sumOfPrimes = Prime.sum_primes(10, 1, 0)
IO.puts sumOfPrimes
