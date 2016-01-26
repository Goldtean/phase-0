 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Create a game like Family Fued called Jeremy Fued. I think the easy thing to do is to
// make a story type game, which is cool but I am more of an outside the box kind of guy. 
// I want mine to be simple to play and I want a crude graphical representation. Since I don't want to research anything
// other than the technicalities of JavaScript and how to build the game, I will make up all the questions,
// and answers. I will start with 4 answers in 1 column.

// The answers will be: 1) Netflix, 2) Grand Theft Auto, 3) Metal Gear Solid, 4) Call Of Duty
// If I work two colums in the second colum will be: 5) Music/Spotify, 6) BluRay/DVD, 7) System Update, 8) Nightman

// If I can easily get the first part done, I can add complexities like a second column for 8 answers,
// adding multiple rounds and needing to get 200 points to move to the final round, and then needing 100 to win
// the $20,000. If I get really crazy maybe work the Ford Edge in there, but that might just be getting out of
// hand. Plus, this is Jeremy Fued so it would be a Tesla Model X. If people are going to get a pretend car in
// my game it better be the best damn car there is.

// Goals: Guess all the answers to a question in 3 tries. If you fail, the Knowitall Family wins.
// And you can't let those damn Knowitalls win!
// Characters: Steve Harvey - he asks the question. The Knowitall Family - this family isn't messing around,
// they ALWAYS steal so you better bring your A-Game!
// Yourself - you are asked using prompt and have to guess correctly. The answers should be undercased automatically
// to better avoid the chances of failing to identify a positive, is a feature I will implement if I have time.

// Objects: The board should print to the console. A an "[X]" should be added above the board every wrong
// answer. The entries should be marked with numbers (1-4), unless guessed correctly, in which case they should
// display with the amount of points.

// I am going to start very minimal. I will ingore the point system on the first try. I can
// always add it later once I have the shell built for the game.

// Functions:
// Board 1) 1, 2, 3, 4 printed to console on a new line. Board 2) has the answers, but is not printed.
// If a user answer matches an answer from Board 2, which has the answers, it's corresponding value is printed to board 1.
// If a user answer does not match an answer, an "[X]" is added on top of the board.

// Pseudocode
// Display the question to console: "When Jeremy is on his Playstation, what are the things he's doing:"
// Have an array or object that holds each answer
// Have another array or hash that gets printed to the console print each value 1, 2, 3, 4 on a new line.
// Prompt for a user answer, compare answer to the first array or hash. lowercase should be compared.
// If the user answer matches an answer, it should be fed into the first array and the first array re-printed.
// If the user answer does not match an answer, an "[X]" should be printed to the console.
// On three "[X]" the game is over in a loss.
// If all answers are given by the user, the game is over in a win.
// To do this all, I should maybe wrap it in a while loop. I figure the easiest may to to pass the elements from
// answers to board destructively, and have the loop end either when there are [X][X][X] or when answers is empty.

// Initial Code


// PLEASE NOTE - THIS GAME HAS BEEN UPDATED AND IS AVAILABLE ONLINE.

var answers = ["netflix", "grand theft auto", "metal gear solid", "call of duty"]
var board = ["1", "2", "3", "4"]

function print_board(array) {
	console.log("When Jeremy is on his Playstation, what are the things he's doing:")
  for (var i = 0; i < array.length; i++) {
    console.log(array[i]);
  };
};

print_board(board)


function play_fued(array){

var wrong_count = 0
var right_count = 0

while (right_count < 4 && wrong_count < 3){

var user_input = prompt("Steve Harvey: When Jeremy is on his Playstation, what are some things he is doing:", "");
var check = array.includes(user_input);

if (check == true) {
	console.log("Steve Harvey: It's on the board!");
	console.log("[X]".repeat(wrong_count));
	var array_place = answers.indexOf(user_input);
	board[array_place] = user_input;
	delete answers[array_place];
	console.log(print_board(board));
	right_count++;
	}
else{
	wrong_count++;
	console.log("[X]".repeat(wrong_count));
	print_board(board)
	}
}

if (right_count == 4){
	console.log("Steve Harvey: Congratulations! You won the $20,000 and a new Tesla Model X!");
}
else if (wrong_count == 3) {
	console.log("Steve Harvey: The Knowitall Family stole the prize!");
}
}

play_fued(answers)

// Refactored Code
// Instead of refactoring I added this online as well as added features. I hope I can be forgiven! It is refactored, in a sense, in that
// I completely re-wrote it so that it works online and took out useless fluff and anything that wasn't 100% necessary.
// In addition, I added the following features in the one posted in my projects page (goldtean.github.io/projects/game.html)
// 1) You can enter names upcase or downcase
// 2) The board publishes names with first letters capitalized
// 3) The game tells you how many tries you have left after every failed attempt
// 4) HTML / CSS styling
// I am still hoping to add the following: 1) the next best answer not answered, 2) multiple questions, 3) possibility of playing multiple
// rounds and getting to a final round. The crazy thing is when I started with JavaScript I thought: ugh, this sucks, it's hard and I
// don't know how to do anything. Now I wish I had more time to use it, because I can think of ways to do all the things I want to add
// with my existing knowledge. Crazy stuff!

// Reflection
// What was the most difficult part of this challenge?
// Starting. I felt really confused with JavaScript, kind of like I felt with Ruby at the start but more so because the grammar is
// more stringent. Once I got started it kind of just came together. The while loop was probably the second hardest. I was trying
// to delete an element of the answers array every right answer and then have the while loop when the array is empty. I
// eventually gave up on it and made two counters - right_count and wrong_count. Those ended up making the whole thing run smoothly,
// so even though it's now how I wanted to do it I'm happy I did it that way.

// What did you learn about creating objects and functions that interact with one another?
// It's interesting! You have to keep track of them pretty well, and you basically have to work one object at a time and do lots of tests.
// One important thing is to remember where everything is in the program and what elements have access to what other elements.
// At first I tried having the checks on a different function but they didn't have access to the "play_fued" objects so it did not work.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I'm sorry but I have not refactored it yet and I may not get the chance to. I will try, if I can get everything done in time by the end
// of tomorrow with some time to spare I will come back to this and work on it some more. In some ways I would rather add features than
// refactor, but we'll see how I'm feeling.

// How can you access and manipulate properties of objects?
// You can access them by calling them much like in Ruby. For example, to access the index of the user input I set a variable equal to
// the answers array at the index of user_input using indexOf. You can manipulate them by either creating a new variable of the data
// or changing it straight up. For example, I took