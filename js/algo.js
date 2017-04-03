function LongestWord(wordArray) {
  longest = "";
  for (i = 0; i < wordArray.length; i++) {
    if (wordArray[i].length > longest.length) {
    longest = wordArray[i];
    };
  };
  return longest;
};

function findMatch(objectOne, objectTwo)  {
  objOneKeys = Object.keys(objectOne);
  objTwoKeys = Object.keys(objectTwo);

  for (i = 0; i < objOneKeys.length; i++) {
    if ((objOneKeys[i] == objTwoKeys[i]) && (objectOne[objOneKeys[i]] == objectTwo[objTwoKeys[i]])) {
      console.log("returned true");
      return true;
    }
  }
  console.log("Returned false");
  return false;
};

function randomStrings(length) {
  var randomArray = [];
  var alpha = "abcdefghijklmnopqrstuvwxyz";
  var text = "";

  for (i = 1; i <= length; i++) {
    for (j = 0; j <= Math.floor(Math.random() * 10) + 1; j++) {
      text += alpha.charAt(Math.floor(Math.random() * 26));
    }
  randomArray.push(text);
  text = "";
  }
  return randomArray;
}

var words = ["cat", "food", "thousands", "rat", "ab"];
var otherWords = ["a phrase", "a longer phrase", "short phrase", "word"];
console.log(LongestWord(words));
console.log(LongestWord(otherWords));

findMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
findMatch({name: "Steven", age: 54}, {name: "Tamir", years_old: 54});
findMatch({name: "Steven", age: 54}, {name: "Tamir", age: 254});
findMatch({alias: "Tamir", age: 54}, {name: "Tamir", age: 54});

console.log(randomStrings(4));

for (var count = 1; count <= 10; count++) {
  var currentArray = randomStrings(8);
  console.log(currentArray);
  console.log(LongestWord(currentArray));
}