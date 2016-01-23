 // JavaScript Olympics

// I paired with: Kyle Cierzan on this challenge.

// This challenge took me [#] hours.


// Warm Up

var athletes = [{name: "Bode Miller", event: "skiing"}, {name: "Michael Phelps", event: "swimming"}]

function addWin(array) {
  for (var i = 0; i < array.length; i++) {
    array[i].win = array[i].name + " won the " + array[i].event + " event.";
    console.log(array[i].win);
  };
};

addWin(athletes);

// __________________________________________
// Write your code below.





// Jumble your words

function jumble(string) {
  var stringsplit = string.split("");
  var reversed = stringsplit.reverse();
  var joinstring = reversed.join("");
  return joinstring
}

console.log(jumble("Hello"))

// 2,4,6,8



var mixedArray = [1, 2, 3, 4, 5, 6, 10, 13, 100];

function evenFilter(array) {
  function isEven(number) {
    return number % 2 === 0;
  };
  var evenArray = array.filter(isEven);
  console.log(evenArray);
};

evenFilter(mixedArray);

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection


// What JavaScript knowledge did you solidify in this challenge?
  // I solidified how JavaScript is different from Ruby and some different things you have to do to make things work. For example, .reverse
  // does not work on strings - so you have to convert a string to an array then back to a string. Setting variables also was solidified.
// What are constructor functions?
  // Constructor functions basically construct an object based on the arguments passed in.
// How are constructors different from Ruby classes (in your research)?
  // It's different because from what I can tell because an object constructor basically just creates an object, whereas classes in Ruby do
  // all kinds of other things, although they can construct. Maybe constructors can do a lot more things in JavaScript as well, we just haven't
  // gotten there yet. Also, any function can be a constructor whereas to define a class in Ruby you must do it in a specific way.