<?php
// A palindromic number reads the same both ways. The largest palindrome made
// from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

$largestProdPalindrome = 0;
for ($i = 999; $i >= 100; $i--) {
  for ($j = 999; $j >= 100; $j--) {
    $prod = $i * $j;
    if (isPalindrome($prod) && $prod > $largestProdPalindrome) {
      $largestProdPalindrome = $prod;
    }
  }
}

print "Largest Palindrome: $largestProdPalindrome\n";

function isPalindrome($num) {
  $strNum = strval($num);
  return $strNum === strrev($strNum);
}
