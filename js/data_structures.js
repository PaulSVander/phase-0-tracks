var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Billy", "Bob", "John"];

colors.push("grey");
names.push("Frank");

var barn = {};

for(i = 0; i < colors.length; i++){
  barn[names[i]] = colors[i];
};

console.log(barn);

function Car(model, year, engineStatus) {
  this.model = model;
  this.year = year;
  this.engineStatus = engineStatus;

  this.turnOn = function() {
    engineStatus = true;
    console.log(model + " is on");
  };

  this.turnOff = function() {
    engineStatus = false;
    console.log(model + " is off");
  };
};

var sedan = new Car("Toyota", 2017, false);
var sportsCar = new Car("Corvette", 2012, false);

sedan.turnOn();
sportsCar.turnOn();

for (var names in barn) {
  if (barn.hasOwnProperty(names)) {
    console.log(names + " is the color " + barn[names]);
  };
};
