# In the 20×20 grid below, four numbers along a diagonal line have been marked in red.

# 08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
# 49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
# 81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
# 52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
# 22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
# 24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
# 32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
# 67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
# 24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
# 21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
# 78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
# 16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
# 86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
# 19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
# 04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
# 88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
# 04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
# 20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
# 20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
# 01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48

# The product of these numbers is 26 × 63 × 78 × 14 = 1788696.
# What is the greatest product of four adjacent numbers in the same direction
# (up, down, left, right, or diagonally) in the 20×20 grid?

rows = [
  [ 08, 02, 22, 97, 38, 15, 00, 40, 00, 75, 04, 05, 07, 78, 52, 12, 50, 77, 91, 08 ],
  [ 49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 04, 56, 62, 00 ],
  [ 81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30, 03, 49, 13, 36, 65 ],
  [ 52, 70, 95, 23, 04, 60, 11, 42, 69, 24, 68, 56, 01, 32, 56, 71, 37, 02, 36, 91 ],
  [ 22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80 ],
  [ 24, 47, 32, 60, 99, 03, 45, 02, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50 ],
  [ 32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70 ],
  [ 67, 26, 20, 68, 02, 62, 12, 20, 95, 63, 94, 39, 63, 08, 40, 91, 66, 49, 94, 21 ],
  [ 24, 55, 58, 05, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72 ],
  [ 21, 36, 23, 09, 75, 00, 76, 44, 20, 45, 35, 14, 00, 61, 33, 97, 34, 31, 33, 95 ],
  [ 78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 03, 80, 04, 62, 16, 14, 09, 53, 56, 92 ],
  [ 16, 39, 05, 42, 96, 35, 31, 47, 55, 58, 88, 24, 00, 17, 54, 24, 36, 29, 85, 57 ],
  [ 86, 56, 00, 48, 35, 71, 89, 07, 05, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58 ],
  [ 19, 80, 81, 68, 05, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 04, 89, 55, 40 ],
  [ 04, 52, 08, 83, 97, 35, 99, 16, 07, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66 ],
  [ 88, 36, 68, 87, 57, 62, 20, 72, 03, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69 ],
  [ 04, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 08, 46, 29, 32, 40, 62, 76, 36 ],
  [ 20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 04, 36, 16 ],
  [ 20, 73, 35, 29, 78, 31, 90, 01, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 05, 54 ],
  [ 01, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 01, 89, 19, 67, 48 ]
]

defmodule Grid do
  def make(rows) do
    # Make it easier to work with
    Enum.flat_map(Enum.with_index(rows), fn({row, rowIndex}) ->
      Enum.map(Enum.with_index(row), fn({val, colIndex}) ->
        %{
          row: rowIndex,
          col: colIndex,
          val: val
        }
      end)
    end)
  end

  def greatestProduct(grid, lengthOfOneSide, desiredLength) do
    # Count the total number of grids there are
    numSequencesOfLengthN = lengthOfOneSide - desiredLength + 1
    numPossibleNxNGrids = numSequencesOfLengthN * numSequencesOfLengthN

    # Map the grid number to the largest product in each possible grid.
    Enum.map(1..numPossibleNxNGrids, fn(x) ->
      rowStart = div(x - 1, numSequencesOfLengthN)
      rowEnd = rowStart + (desiredLength - 1)
      colStart = rem(x - 1, numSequencesOfLengthN)
      # Rem will sometimes give -1, we want the positive remainder.
      if (colStart < 0) do
        colStart = colStart + numSequencesOfLengthN
      end
      colEnd = colStart + (desiredLength - 1)

      # Find the unique sub-grid.
      allNumsInGrid = Enum.filter(grid, fn(%{:row => row, :col => col, :val => _val}) ->
        lessThanEnd = row <= rowEnd and col <= colEnd
        moreThanStart = row >= rowStart and col >= colStart
        lessThanEnd and moreThanStart
      end)

      # Go through each grid and reduce to the product of the rows.
      greatestRowProduct = Enum.map(rowStart..rowEnd, fn(n) ->
        # Filter the grid into rows.
        Enum.filter(allNumsInGrid, fn(%{:row => row, :col => _col, :val => _val}) ->
          row === n
        end) |>
        # Reduce to the product of that row.
        Enum.reduce(1, fn(%{:row => _row, :col => _col, :val => val}, acc) ->
          acc * val
        end)
      end) |>
      # Take the maximum row product.
      Enum.reduce(0, fn(x, acc) ->
        Enum.max([x, acc])
      end)

      # Go through each grid and reduce to the product of the columns.
      greatestColProduct = Enum.map(colStart..colEnd, fn(n) ->
        # Filter the grid into columns.
        Enum.filter(allNumsInGrid, fn(%{:row => _row, :col => col, :val => _val}) ->
          col === n
        end) |>
        # Reduce to the product of that column.
        Enum.reduce(1, fn(%{:row => _row, :col => _col, :val => val}, acc) ->
          acc * val
        end)
      end) |>
      # Take the maximum column product.
      Enum.reduce(0, fn(x, acc) ->
        Enum.max([x, acc])
      end)

      # Now, get the negative sloped diagonal product. These are the ones where the
      # differences between the columns are the same as the starting point.
      [%{:row => firstRow, :col => firstCol, :val => _val}] = Enum.take(allNumsInGrid, 1)
      negativeDiagonal = Enum.filter(allNumsInGrid, fn(%{:row => row, :col => col, :val => _val}) ->
        row - col === firstRow - firstCol
      end) |>
      Enum.reduce(1, fn(%{:row => _row, :col => _col, :val => val}, acc) ->
        acc * val
      end)

      # Then get the positive sloped diagonal product.
      # First, find the starting element. (The top right corner of the grid)
      %{:row => posRow, :col => posCol, :val => _val} =
        Enum.find(allNumsInGrid, fn(%{:row => row, :col => col, :val => _val}) ->
          row === firstRow and col === colEnd
        end)

      # Sums along the positive diagonal will always be the same,
      # so we just filter by the sum of the row and column indexes.
      positiveDiagonal = Enum.filter(allNumsInGrid, fn(%{:row => row, :col => col, :val => _val}) ->
        row + col === posCol + posRow
      end) |>
      Enum.reduce(1, fn(%{:row => _row, :col => _col, :val => val}, acc) ->
        acc * val
      end)

      # Finally, take the max of both diagonals to get the greatest diagonal product.
      greatestDiagonalProduct = Enum.max([negativeDiagonal, positiveDiagonal])

      # Then, just find the largest one between all of them and return that as the map.
      Enum.max([ greatestRowProduct, greatestColProduct, greatestDiagonalProduct ])
    end) |>
    # Take the maximum total value.
    Enum.reduce(0, fn(x, acc) ->
      Enum.max([x, acc])
    end)
  end
end
# grid = Grid.make([
  # [ 08, 02, 22, 97 ],
  # [ 49, 49, 99, 40 ],
  # [ 81, 49, 31, 73 ],
  # [ 52, 70, 95, 23 ]
  # ])
  # IO.inspect Grid.greatestProduct(grid, 4, 2)
grid = Grid.make(rows)
IO.inspect Grid.greatestProduct(grid, 20, 4)