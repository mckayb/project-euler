// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
// without any remainder. What is the smallest positive number that is evenly divisible
// by all of the numbers from 1 to 20?
const divisibleThroughFirstN = (n) => {
  return (num) => {
    for (let i = 1; i < n; i++) {
      if (num % i !== 0) {
        return false
      }
    }
    return true
  }
}

const divisibleThroughFirst20 = divisibleThroughFirstN(20)
let num = 2520
while (true) {
  if (divisibleThroughFirst20(num)) {
    console.log('Num: ', num)
    break
  }
  num += 2
}

// const divisibleThroughFirst10 = divisibleThroughFirstN(10);
// console.log(divisibleThroughFirst10(2520))
