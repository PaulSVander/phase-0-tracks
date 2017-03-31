/* take in a string
create an empty string variable
loop through the string in reverse and add the letter into the new string
*/

function reverse(string) {
  var reverseString= "";

  for (var i = string.length - 1; i >= 0; i--) {
    reverseString += string[i];
  }

  return reverseString;
}

var result = reverse("Hello!");

var thisIsTrue = true;
if (thisIsTrue) {
  console.log(result);
}

