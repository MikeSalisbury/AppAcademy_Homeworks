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
