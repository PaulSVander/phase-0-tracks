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
   else
    valid_user = true 
  end
end

user_id = db.execute("SELECT id FROM users WHERE username=?", [username_input])
user_id = user_id[0][0]

user_selection = nil
until user_selection == "quit" do
  puts "Welcome #{username_input}. Select from one of the following options or enter quit."
  puts "1. Add an exercise"
  puts "2. Update an exercise"
  puts "3. View an exercises information"
  puts "4. View all exercise information"

  user_selection = gets.chomp

  case user_selection
  when "1"
    add_exercise(db)
  when "2"
    update_exercise(db, user_id)
  when "3"
    view_info(db, user_id)
  when "4"
    view_all(db, user_id)
  end
end
