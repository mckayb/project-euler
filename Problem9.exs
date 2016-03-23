# A Pythagorean triplet is a set of three
# natural numbers, a < b < c,for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean
# triplet for which a + b + c = 1000.
# Find the product abc.

# There's a way to generate them. But I'll have to research it
# and come up with the elegant solution. Until then, Brute force it is.

defmodule Pythagorean do
  def triplesOfSum(sum) do
    {floatSum, _} = Float.parse(Integer.to_string(sum))
    Enum.any?(1..sum, fn(a) ->
      Enum.any?(1..sum, fn(b) ->
        cSquared = a*a + b*b
        c = :math.sqrt(cSquared)
        if (a + b + c === floatSum) do
          IO.puts a * b * c
        end
      end)
    end)
  end
end
Pythagorean.triplesOfSum(1000)
# Pythagorean.triplesOfSum(12)
