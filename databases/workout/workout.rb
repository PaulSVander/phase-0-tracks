require 'sqlite3'

workouts = SQLite3::Database.new("workouts.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS exercises(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    reps INT,
    weight INT
  )
SQL

workouts.execute(create_table)

puts "Hello! Please select one of the following options or type 'quit'"
puts "1. Add new exercise"
puts "2. Update existing exercise"
puts "3. View exercise information"
puts "4. Delete an exercise"
user_choice = gets.chomp.to_i
p user_choice

=begin
def add_exercise(new_exercise, reps, weight)
  puts "What is the name of the exercise you would like to add?"
  new_exercise = gets.chomp
  puts "How many reps did you do?"
  reps = gets.chomp
  puts "How much weight did you use?"
  weight = gets.chomp
  workouts.execute("INSERT INTO exercises (name, reps, weight) VALUES (?, ?, ?)", [new_exercise, reps, weight])
end
=end 

=begin
def update_exercise(exercise, reps, weight)
  puts "What is the exercise you would like to update?"
  exercise = gets.chomp
  puts "How many reps did you do?"
  reps = gets.chomp
  puts "How much weight did you use?"
  weight = gets.chomp
  workouts.execute("UPDATE exercises SET reps = ?, weight = ? WHERE name = ?", [reps, weight, exercise])
end
=end
=begin
def view_exercise()
  puts "Which exercise would you like to view?"
  name = gets.chomp
  display = workouts.execute("SELECT * FROM exercises WHERE name = ?", [name])
  puts "Exercise:\t#{display[0][1]}"
  puts "Reps:\t\t#{display[0][2]}"
  puts "Weight:\t\t#{display[0][3]}lbs."
end
=end

def delete_exercise()
  
end