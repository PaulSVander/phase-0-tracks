
// ---------------RELEASE 1-------------------------
// var photo = document.getElementById('doge');
// photo.style.border = "3px dashed green";

// var headers = document.getElementsByClassName('headers');
// headers[0].style.fontSize = '20px';

// var paragraph = document.getElementsByTagName('p');
// paragraph[0].style.fontWeight = "bold";

// ---------------RELEASE 2-------------------------

function addGreenDashedBorder () {
  event.target.style.border = "3px dashed green";
};

var photo = document.getElementById('doge');
photo.addEventListener("click", addGreenDashedBorder);

function makeTextBig () {
  event.target.style.fontSize = '40px';
};
var headers = document.getElementsByClassName('headers');
headers[0].addEventListener("mouseover", makeTextBig);

function makeTextsmall () {
  event.target.style.fontSize = '20px';
};
var headers = document.getElementsByClassName('headers');
headers[0].addEventListener("mouseout", makeTextsmall);

function makeTextBold () {
  event.target.style.fontWeight = "bold";
}
var paragraph = document.getElementsByTagName('p');
paragraph[0].addEventListener("mousedown", makeTextBold);
function makeTextNotBold () {
  event.target.style.fontWeight = "";
}
var paragraph = document.getElementsByTagName('p');
paragraph[0].addEventListener("mouseup", makeTextNotBold);