// The sum of the squares of the first ten natural numbers is,
//
// 1^2 + 2^2 + ... + 10^2 = 385
//
// The square of the sum of the first ten natural numbers is,
//
// (1 + 2 + ... + 10)^2 = 552 = 3025
//
// Hence the difference between the sum of the squares of the first ten
// natural numbers and the square of the sum is 3025 − 385 = 2640.
// Find the difference between the sum of the squares of the first one
// hundred natural numbers and the square of the sum.

const sumOfFirstN = (n) => {
  return (n * (n + 1)) / 2
}

const sumOfSquaresOfFirstN = (n) => {
  return (n * (n + 1) * (2*n + 1)) / 6
}

// const squareOfSum = Math.pow(sumOfFirstN(10), 2)
// const sumOfSquares = sumOfSquaresOfFirstN(10)
// const result = squareOfSum - sumOfSquares

const squareOfSumUpTo100 = Math.pow(sumOfFirstN(100), 2)
const sumOfSquaresUpTo100 = sumOfSquaresOfFirstN(100)
const result = squareOfSumUpTo100 - sumOfSquaresUpTo100

console.log('Difference: ', result)
