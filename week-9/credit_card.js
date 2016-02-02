// 9.2 JavaScript Review
// Translate Ruby to JavaScript
// I chose to do the credit card challenge from Week 6

// From the challenge:
// Starting with the second to last digit, double every other digit until you reach the first digit.
// Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).
// If the total is a multiple of ten, you have received a valid credit card number!

// Pseudocode:
// There are 16 numbers in a credit card. Doubling every single number starting from the second last digit
// is the same as doubling every second number starting from the first number.
// First, I will likely turn the string of numbers into an array so they can be more easily modified.
// Then I will do something like a FOR loop or other iterative technique to double all appropriate numbers.
// I will put all the doubled numbers and the non-doubled numbers into an array. Since I want to add up
// all the single digits (eg. 3 + 10 + 15 = 3 + 1 + 0 + 1 + 5) I will turn this array into a string with no
// separators then turn that into an array with each number separated. Then I will add up that array.
// Lastly, I will use the trusty old modulus to see if it's divisible by 10 and use an IF statement
// to accept or decline the card.
// Because the challenge isn't clear and we aren't supposed to look back at our answers, I am assuming the card
// number will be passed in the form of a 16 digit string.

// Initial solution

// var card_number = "4408041234567901"

// function validate(card) {
// 	var card_array = Array.from(card);
// 	if (card_array.length != 16) {
// 		console.log("Fraud alert!")}
// 	else {
// 		var double_me_up = []
// 			for (var i = 0; i < card_array.length; i = i + 2) {
// 				double_me_up.push(card_array[i]);
// 			}
// 			for (x in double_me_up) {
// 				double_me_up[x] = double_me_up[x] * 2;
// 			}

// 			var count = 0
// 			for(var i = 0; i < double_me_up.length; i++) {
// 				count = count + double_me_up[i];
// 			}
// 			if (count % 10 == 0) {
// 				console.log("Transaction approved!");
// 				return true;
// 			}
// 			else {
// 				console.log("Transaction declined!");
// 				return false;
// 			}
// 	}	
// }

// Refactored solution

// Looking back it appears that the number was passed through as a number, so I have altered the validate
// function to first string-ify the number. Also, I missed the last two steps and only realized after my
// initial solution. Instead of adding up all the numbers, I was only adding the doubled numbers, and I
// also wasn't splitting them correctly. That's all been fixed for the refactor, along with a fancy
// shmansy reduce method for summing an array in one line.

var card_number = 4408041234567901

function validate(card) {
	card_string = card.toString();
	var card_array = Array.from(card_string);
	if (card_array.length != 16) {
		console.log("Fraud alert!");
		return false;
	}
	else {
		var string_me = []
			for (var i = 0; i < card_array.length; i = i + 2) {
				string_me.push(card_array[i] * 2);
			}
			for (var i = 1; i < card_array.length; i = i + 2) {
				string_me.push(card_array[i]);
			}
			var array_me = string_me.join("");
			var count_me = array_me.split("").map(Number);

			var count = count_me.reduce((x, y) => x + y);

			if (count % 10 == 0) {
				console.log("Transaction approved!");
				return true;
			}
			else {
				console.log("Transaction declined!");
				return false;
			}
	}	
}

validate(card_number)