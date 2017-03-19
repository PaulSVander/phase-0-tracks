game_store = {
  xbox_one: {
    name: "Xbox One",
    stock: {
      new_consoles: 5,
      used_consoles: 2
    },
    games: [
      "Forza Motorsport",
      "Halo",
      "Gears of War"
    ]
  },

  playstation_four: {
    name: "Playstation 4",
    stock: {
      new_consoles: 6,
      used_consoles: 1
    },
    games: [
      "Gran Turismo",
      "The Last of Us",
      "Final Fantasy"
    ]
  },

  switch: {
    name: "Nintendo Switch",
    stock: {
      new_consoles: 8,
      used_consoles: 0
    },
    games: [
      "The Legend of Zelda",
      "Super Mario",
      "Super Smash"
    ]
  }
}

puts "The number of used Playstations is #{game_store[:playstation_four][:stock][:used_consoles]}"
puts "The games for the Xbox One are #{game_store[:xbox_one][:games]}"
game_store[:xbox_one][:games].push("Rare Replay")
puts "New list of games for Xbox One is #{game_store[:xbox_one][:games]}"
puts "The second game in the list of Switch games is #{game_store[:switch][:games][1]}"
game_store[:xbox_one][:stock][:new_consoles] -= 1
puts "One new Xbox was sold. New total is now #{game_store[:xbox_one][:stock][:new_consoles]}"
puts "The last game in the list of Playstation games is #{game_store[:playstation_four][:games].last}"
