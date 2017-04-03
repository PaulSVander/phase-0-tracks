function LongestWord(wordArray) {
  longest = "";
  for (i = 0; i < wordArray.length; i++) {
    if (wordArray[i].length > longest.length) {
    longest = wordArray[i];
    };
  };
  return longest;
};



var words = ["cat", "food", "thousands", "rat", "ab"];
var otherWords = ["a phrase", "a longer phrase", "short phrase", "word"];
console.log(LongestWord(words));
console.log(LongestWord(otherWords));
