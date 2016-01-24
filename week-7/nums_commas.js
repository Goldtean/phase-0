// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jeremy Oltean.

// Pseudocode
// Input: an integer
// Output: a string, with commas in the appropriate place(s)
// Steps: 1. create a variable to store a string version of the number.
//        2. create an empty string variable, result (to fill and return later).
//        3. loop over the string version of the input, back to front, adding
//            characters to the result variable, with commas after every 3rd character.
//        4. Ensure we don't add a comma as the first character in the string.
//        5. Return the result


// Initial Solution

// function separateComma(num) {
//   var num_characters = num.toString().split("");
//   var result = "";

//   var i = num_characters.length - 1
//   var counter = 1

//   while (i >= 0) {
//     result = num_characters[i] + result;
//     i--;
//     if (counter === 3) {
//       result = "," + result;
//       counter = 0;
//     }
//     counter++;
//   }

//   if (result.charAt(0) === ",") {
//     result = result.split("");
//     delete result[0];
//     result = result.join("");
//   }
//   return result;

// }

// Refactored Solution

function separateComma(num) {
  var num_characters = num.toString().split("");
  var result = "";
  var i = num_characters.length - 1
  var counter = 1

  while (i >= 0) {
    result = num_characters[i] + result;
    i--;
    if (counter === 3 && i > -1) {
      result = "," + result;
      counter = 0;
    }
    counter++;
  }

  return result; 
}


// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof separateComma(1234) === 'string'),
  "Your function needs to return a string.",
  "1. "
)

assert(
  (separateComma(156974) === "156,974"),
  "Your string is not the same as the integer",
  "2. "
)

assert(
	(separateComma(1569743) === "1,569,743"),
	"Your string is not the same as the integer",
	"3. "
)

assert(
	(separateComma(15697438) === "15,697,438"),
	"Your string is not the same as the integer",
	"4. "
)

console.log(separateComma(1569743897) === "1,569,743,897");
console.log(separateComma(123456789000123));
console.log(separateComma(12345678900012));
console.log(separateComma(12345678900012));

/* Reflection

What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?

We did it completely differently than when I did it myself. Because JavaScript doesn't seem to have as many methods
we went with turning the number into an array and then iterated over it with a while loop, adding a comma every 3 spaces.
We then went with an if statement fix for adding a comma at the start of the string. It was a quick dirty way to
make sure no number started with a comma. Then we refactored it away by adding && to our comma adding if statement.

What did you learn about iterating over arrays in JavaScript?
I learned how to do it using length by watching James as he was driving doing it. I learned also about flwo control
in terms of adding && i > -1, and deleting a part of a string by turning into an array then back to a string. Adding
an if statement inside of a while loop was also something I had issues with an early challenge and we had no problem
doing it here.

What was different about solving this problem in JavaScript?
Javascript seems to be more stringent in what methods can be used where and how you can do things, but it also has some
methods that don't exist in Ruby. It also does not seem to work with extremely large values the way that Ruby does. I
tried putting in a very long number and the last numbers all seem to turn to 0s. In Ruby with my solution any length
of number worked, but I didn't look at the solution as was required so I'm not sure if the way we solved it had anything
to do with it.

What built-in methods did you find to incorporate in your refactored solution?
We kind of took out a built in method that we discovered by just using the && operator. We used charAt in our if statement
that we took out and it worked really well. We took it out since it was shorter and although logically more challenging,
it makes the solution simpler by avoiding a problem instead of creating a problem then fixing it.

*/

