require 'sqlite3'

$workouts = SQLite3::Database.new("workouts.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS exercises(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    reps INT,
    weight INT
  )
SQL
$workouts.execute(create_table)

user_choice = nil
while user_choice != "quit" do
  puts "Hello! Please select one of the following options using it's number or type 'quit'"
  puts "1. Add new exercise"
  puts "2. Update existing exercise"
  puts "3. View an exercise"
  puts "4. View all exercises"
  puts "5. Delete an exercise"
  user_choice = gets.chomp

  case user_choice
  when "1"
    add_exercise
  when "2"
    update_exercise
  when "3"
    view_exercise
  when "4"
    view_all
  when "5"
    delete_exercise
  when "quit"
    puts "Exiting program"
  else
    puts "Invalid input"
  end
end
