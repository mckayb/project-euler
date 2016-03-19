<?php
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

$n = 600851475143;
$largestFactor = 1;

if ($n % 2 === 0) {
  $largestFactor = 2;
}

$sqrtN = sqrt($n);

for ($i = 3; $i < $sqrtN; $i++) {
  if ($n % $i === 0 && isPrime($i)) {
    $largestFactor = $i;
  }
}
print "Largest Prime Factor: $largestFactor \n";

function isPrime($n) {
  $sqrtN = sqrt($n);
  for ($i = 2; $i < $sqrtN; $i++) {
    if ($n % $i === 0) {
      return false;
    }
  }
  return true;
}
