var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Billy", "Bob", "John"];

colors.push("grey");
names.push("Frank");

var barn = {};

for(i = 0; i < colors.length; i++){
  barn[names[i]] = colors[i];
};

console.log(barn)