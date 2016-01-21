// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

function fac(n) {
  if (n == 0)
    return 1;
  else
    return fac(n - 1) * n;
}

// console.log(fac(9))

var food = String(prompt("What's your favourite food?", ""));
alert("Hey! " + food + " is my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping Triangle
/*
var result = "#";
var counter = result.length;
while (counter < 8) {
  console.log(result);
  result = result + "#";
  counter = counter + 1;
}
*/
// Woohoo! My first JavaScript program!

//FizzBuzz

var fizzBuzz = 1;
do {
	  console.log(fizzBuzz);
      fizzBuzz++;
} while (fizzBuzz < 101)


// Functions

// Complete the `minimum` exercise.

var min = function(a, b) {
  return Math.min(a, b);
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.


var me = [
  {name: "Jeremy"},
  {age: 30},
  {fav_foods: ["tripe soup", "mashed potatoes and steak", "Five guys"]},
  {quirk: "I love stocks"},
];


// Reflection
// Introduction
// Did you learn anything new about JavaScript or programming in general?
  // I learned the general framework of how you would assign some variables to objects and print them to terminal.
// Are there any concepts you feel uncomfortable with?
  // So far all of it since we just got started, but I'm sure I'll get the hang of it. It seems similar to ruby but
  // complicated and harder to write. It seems to have a lot more rules and more rigid grammar expectations.
// Ch. 1: Values, Types, and Operators
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic,
// strings, booleans, and various operators.
  // Two similarities are:
  // 1) the operators are all the same from what I can tell. +, -, *, /, %, ==, ===, <=, >=, etc., and;
  // 2) Another similarity is how strings are strings and not integers, and you can do string addition like in ruby.
  // Two differences are:
  // 1) JavaScript has a NaN value which does not equal itself and is the result of doing theoretical calculations, like
  // infinity - infinity, or (infinity * infinity) / infinity, etc. I don't believe Ruby has that. 
  // 2) JavaScript, while the text says it will evaluate just about everything, is not as a good as ruby in it's string 
  // logic, in my opinion. For example, "Five" * 2 evaluates to NaN in JavaScript while while in ruby it's "FiveFive".
  // Ruby's asnwer makes more sense to me.
// Ch. 2: Program Structure
// What is an expression?
  // Every fragment of code that produces a value is called an expression.
// What is the purpose of semicolons in JavaScript? Are they always required?
  // They are mostly always required. It's good form to put them in just in case.
// What causes a variable to return undefined?
  // Defining a variable without giving it a value will return it undefined.
// Write your own variable and do something to it in the eloquent.js file.
  // Okay.
// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
  // console.log prints things to the console. It's like puts, or p, or print in ruby.
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program
// respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console
// (Links to an external site.) rather than node since node does not support prompt or alert).
// Paste your program into the eloquent.js file.
  // Done - see food above.
// Describe while and for loops
  // They both provide ways to iterate over data, like in ruby. While loops work until a condition no longer is true.
  // For loops are similar.
// What other similarities or differences between Ruby and JavaScript did you notice in this section?
  // They both seem to work similarly but there are differences in syntax. JavaScript seems to be more strict with syntax
  // and I have problems getting it work the way I want. For example, putting an if statement into a while loop does not 
  // seem to work for my fizzBuzz problem, but maybe it's the way I'm writing it.
// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
  // Triangle is above.
// Ch. 3: Functions (Skip the sections on closure and recursion)
// What are the differences between local and global variables in JavaScript?
  // Local variables are definited inside of functions, whereas global variables are definied outside of them and are 
  // accessible by the whole program. Local variables are only callable by the functions they are defined in.
// When should you use functions?
  // Basically any time you need to want to wrap a piece of software to a value.
// What is a function declaration?
  // Function declaration is a way to declare a function that goes "function square(x) {return x * x;}" instead of the normal
  // var square = function...
  // Function declaration also does not abide by the regular top down approach. They are conceptually moved to the top so they
  // are available to all code in the file.
// Complete the minimum exercise in the eloquent.js file.
  // See above.
// Ch. 4: Data Structures: Objects and Arrays (Links to an external site.) 
// Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object,
// but read the chapter summary.
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
  // max must already be defined inside of the variable to be called after the dot. By putting it in brackets and quotes, you
  // instead evaluate max.
// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
  // See above.
// What is a JavaScript object with a name and value property similar to in Ruby?
  // I believe it's similar to a symbol.