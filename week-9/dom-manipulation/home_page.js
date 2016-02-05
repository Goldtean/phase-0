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