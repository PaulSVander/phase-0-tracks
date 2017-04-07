def add_exercise()
  puts "What is the name of the exercise you would like to add?"
  new_exercise = gets.chomp
  puts "How many reps did you do?"
  reps = gets.chomp
  puts "How much weight did you use?"
  weight = gets.chomp
  $workouts.execute("INSERT INTO exercises (name, reps, weight) VALUES (?, ?, ?)", [new_exercise, reps, weight])
end
 
def update_exercise()
  puts "What is the exercise you would like to update?"
  list_exercises
  exercise = gets.chomp
  puts "How many reps did you do?"
  reps = gets.chomp
  puts "How much weight did you use?"
  weight = gets.chomp
  $workouts.execute("UPDATE exercises SET reps = ?, weight = ? WHERE name = ?", [reps, weight, exercise])
end

def view_exercise()
  puts "Which exercise would you like to view?"
  list_exercises
  name = gets.chomp
  display = $workouts.execute("SELECT * FROM exercises WHERE name = ?", [name])
  puts "Exercise:\t#{display[0][1]}"
  puts "Reps:\t\t#{display[0][2]}"
  puts "Weight:\t\t#{display[0][3]}lbs."
end

def view_all()
  display = $workouts.execute("SELECT * FROM exercises")
  display.each do |exercise|
    p exercise
    puts "Exercise:\t#{exercise[1]}"
    puts "Reps:\t\t#{exercise[2]}"
    puts "Weight:\t\t#{exercise[3]}lbs."
    puts "------------------------"
  end
end

def delete_exercise()
  puts "Which exercise would you like to delete?"
  name = gets.chomp
  $workouts.execute("DELETE FROM exercises WHERE name = ?", [name])
end

def list_exercises()
  display = $workouts.execute("SELECT name FROM exercises")
  display.each do |exercise|
    puts exercise
  end
end