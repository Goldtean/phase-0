// DOM Manipulation Challenge


// I worked on this challenge by Linda Ho.


// Add your JavaScript calls to this page:

// Release 0:

// Release 1:

function release_one() {
  document.getElementById("release-0").className = "done";
}

// Release 2:

function release_two() {
   document.getElementById("release-1").style.display = "none";
}

// Release 3:

function release_three() {
    document.getElementById("release-2").innerHTML = "I completed released 2!";
}

// Release 4:

function release_four() {
    document.getElementById("release-3").style.backgroundColor = "#955251";
}

// Release 5:
function release_five() {
    var elements = document.getElementsByClassName("release-4");
    for (var i=0; i < elements.length; i++) {
    var element = elements[i]
    element.style.fontSize = "2em";	
    }
}

// Release 6:

function release_six() {
	var tmpl = document.getElementById('hidden');
	document.body.appendChild(tmpl.content.cloneNode(true));
}



// What did you learn about the DOM?
// In terms of what I didn't aready know, I learned how to link a JS file to an HTML file and how to
// have multiple functions activate on a website without a button. Before, I was writing all JS inside
// of the HTML file.

// What are some useful methods to use to manipulate the DOM?
// The most important I would say is knowing when to iterate (eg. when you have multiple classes.)
// The document... method is good to change elements inside of HTML tags. Using .style, .innerHTML,
// .className are all useful as well.