# A Pythagorean triplet is a set of three
# natural numbers, a < b < c,for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean
# triplet for which a + b + c = 1000.
# Find the product abc.

# a^2 + b^2 = c^2
# a + b + c = 1000

# c = 1000 - (a + b)
# a^2 + b^2 = (1000 - (a + b))^2
# a^2 + b^2 = 1000000 - 2000(a + b) + a^2 + 2ab + b^2
# 0 = 1000000 - 2000a + 2000b + 2ab
# 1000000 = 2000(a - b) + 2ab
# 1000000 = 2(1000(a - b) + ab)
# 500000 = 1000(a - b) + ab

# There's a way to generate them. But I'll have to research it
# and come up with the elegant solution. Until then, Brute force it is.

defmodule Pythagorean do
  def triplesOfSum(sum) do
    Enum.each(1..sum, fn(a) ->
      Enum.each(1..sum, fn(b) ->
        productOfTriple = Enum.filter_map(1..sum, fn(c) ->
          a + b + c === sum and (a*a + b*b) === c*c
        end,
        fn(x) ->
          a * b * x
        end)

        if (productOfTriple !== []) do
          IO.inspect productOfTriple
        end
      end)
    end)
  end
end

Pythagorean.triplesOfSum(1000)
# Pythagorean.triplesOfSum(12)
