# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

defmodule Factors do
  # The entirety of both find methods could be one line,
  # but it's quite slow in that form. So I had to make
  # it a little more complex.
  def find(n) do
    find(n, 2, [1, n], div(n, 2))
  end

  # Use the symmetry of all of the factors to put both m, and n/m
  # as factors at the same time. This way, I only really need
  # to loop through about n/4 to find all of the factors.
  def find(n, factorGuess, factorList, stop) do
    quotient = div(n, factorGuess)

    if (rem(n, factorGuess) === 0) do
      if (factorGuess !== quotient) do
        factorList = factorList ++ [ factorGuess, quotient ]
      else
        factorList = factorList ++ [ factorGuess ]
      end

      if (quotient < stop) do
        stop = factorGuess
      end
    end

    if (factorGuess < stop) do
      find(n, factorGuess + 1, factorList, stop)
    else
      factorList
    end
  end
end

defmodule Prime do
  # We only need to go up to sqrt(n) to determine if
  # a number is prime or not.
  def check(n) do
    sqrtN = round(:math.sqrt(n))
    Factors.find(n, 2, [1], sqrtN) === [1]
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

sumOfPrimes = Prime.sum_primes(2000000, 1, 0)
# sumOfPrimes = Prime.sum_primes(10, 1, 0)
IO.puts sumOfPrimes
