// madLib
//
// Write a function that takes three strings - a verb, an adjective, and a noun - uppercases and interpolates them into the sentence "We shall VERB the ADJECTIVE NOUN". Use ES6 template literals.

function madLib(verb, adjective, noun) {
  let sentence = `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
  console.log(sentence);
}
madLib('make', 'best', 'guac');

// isSubstring
function isSubstring(string, substring) {
  console.log(string.includes(substring));
}

isSubstring("time to program", "time");
//true
isSubstring("Jump for joy", "joys");
//false

// fizzBuzz
// 3 and 5 are magic numbers.

// Define a function fizzBuzz(array) that takes an array and returns a
// new array of every number in the array that is divisible by either
// 3 or 5, but not both.
function fizzbuzz(array) {
  let result = [];
array.forEach(el => {
  if (el % 3 === 0 && el % 5 === 0) {
    return
  } else if (el % 3 === 0){
    result.push(el)
  } else if (el % 5 === 0){
    result.push(el)
  }
});

console.log(result);
}

fizzbuzz([1, 3, 5, 15]);

// isPrime
// Define a function isPrime(number) that returns true if number is
// prime. Otherwise, false. Assume number is a positive integer.

function isPrime(number){
  let i;
  for(i = 3; i < number; i++) {
    if (number % i === 0){
      console.log(false)
      return
    };
  };

  console.log(true);
}


isPrime(2)
// true
//
isPrime(10)
// false
//
isPrime(15485863)
// true
//
isPrime(3548563)
// false

// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) that
// returns the sum of the first n prime numbers. Hint: use isPrime
// as a helper method.
// function sumOfNPrimes(n) {
//   let primes = []
//   let sum = 0
//   let i
//   for(i = 1; i <= n; i++){
//     if (isPrime(i)) {
//       primes.push(i)
//     };
//   };
//
//   primes.forEach(el => {
//     sum += el;
//   });
//
//   console.log(sum)
// }

function sumOfNPrimes (n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes++;
    }
    i++;
  }

  console.log(sum);
}

sumOfNPrimes(0)
//0

sumOfNPrimes(1)
//2

// sumOfNPrimes(4)
//17
