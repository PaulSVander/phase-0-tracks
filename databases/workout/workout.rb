require_relative 'workout_methods'

db = create_database


puts "Welcome to the workout tracker!"
valid_user = false
while !valid_user
  puts "Please enter your username"
  username_input = gets.chomp
  if !is_existing_user(db, username_input)
    puts "This user does not exist. Would you like to add them to the table?"
    answer = gets.chomp.downcase
    if answer == "yes"
      add_user(db, username_input)
      valid_user = true
    else
      puts "User was not added"
    end
  end
  valid_user = true
end

puts "Welcome #{username_input}. Select from one of the following options"
puts "1. Add a user
      2. "
