//Group project week 7

	// Release 5 - Jeremy Oltean
	// Refactor

function sum(array) {
  return array.reduce((a,b) => a + b);
};

// console.log(sum([1, 2, 3]))
// As a user, I want to take a list of numbers, and add all the numbers together. 

function mean(array) {
  return sum(array) / array.length;
};

// console.log(mean([1, 2, 3, 5, 10]))

// As a user, I want to take a list of numbers, add them all together, and then take the average of the sum. 

function median(array) {
  var arr = array.sort(function(a, b){return a-b});
  if (arr.length % 2 === 0) {
    return mean([arr[arr.length/2], arr[(arr.length/2)-1]])
  } 
  else {
    return arr[Math.floor(arr.length/2)]
  }
};

// console.log(median([100, 2, 3, 5, 10, 11, 12]))

// As a user, I'd like to take a list of numbers, sort them in order from smallest to largest, and find the middle number.
// If there are two middle numbers, then I'd like to average the two of them to find the middle number. 