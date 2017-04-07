require 'sqlite3'

#initializes database with tables
def create_database
  db = SQLite3::Database.new("workout.db")
  
  create_users_table = <<-SQL
    CREATE TABLE IF NOT EXISTS users(
      id INTEGER PRIMARY KEY,
      username VARCHAR(255),
      age INT
    )
  SQL

  create_join_table = <<-SQL
    CREATE TABLE IF NOT EXISTS exercises_users(
      id INTEGER PRIMARY KEY,
      reps INT,
      weight INT,
      exercise_id INT,
      user_id INT,
      FOREIGN KEY (user_id) REFERENCES users(id),
      FOREIGN KEY (exercise_id) REFERENCES exercises(id)
    )
  SQL

  create_exercises_table = <<-SQL
    CREATE TABLE IF NOT EXISTS exercises(
      id INTEGER PRIMARY KEY,
      name VARCHAR(255) 
    )
  SQL



  db.execute(create_join_table)
  db.execute(create_users_table)
  db.execute(create_exercises_table)
  db

end

# Check to see if user already exists
def is_existing_user(db, username)
  username_arr = db.execute("SELECT username FROM users")
  username_arr.each do |user|
    if user[0] == username
      return true
    end
  end
  return false
end

def is_existing_exercise(db, name)
  exercises_arr = db.execute("SELECT name FROM exercises")
  exercises_arr.each do |exercise|
    if exercise[0] == name
      return true
    end
  end
  return false
end

# add a user to the table
def add_user(db, username)
  puts "What is the age of the new user?"
  age = gets.chomp
  db.execute("INSERT INTO users (username, age) VALUES (?, ?)", [username, age])
  puts "#{username} was added to the table"
end

def add_exercise(db, name)
  db.execute("INSERT INTO exercises (name) VALUES (?)", [name])
end

# Update reps and weight for a users exercise
def update_exercise(db, user_id)
  # Prompts user for an exercise until a valid response is received
  puts "What exercise would you like to update?"
  exercise = gets.chomp
  until is_existing_exercise(db, exercise) do
    puts "Invalid exercise. Please retry."
    exercise = gets.chomp
  end
  exercise_id = db.execute("SELECT id FROM exercises WHERE name=?", exercise)
  exercise_id = exercise_id[0][0]

  # If not data exists for this user with this exercise, creates a new row
  if db.execute("SELECT * FROM exercises_users WHERE user_id=? AND exercise_id=?", [user_id, exercise_id]).empty?
    db.execute("INSERT INTO exercises_users (reps, weight, exercise_id, user_id) VALUES (0, 0, ?, ?)", [exercise_id, user_id])
  end
  
  puts "How many reps did you do?"
  reps = gets.chomp
  puts "How much weight did you use?"
  weight = gets.chomp
  db.execute("UPDATE exercises_users SET reps=?, weight=? WHERE exercise_id=? AND user_id=?", [reps, weight, exercise_id, user_id])
end

# View a users info for a specific exercise
def view_info(db, user_id)
  puts "Which exercise would you like to view?"
  exercise = gets.chomp
  until is_existing_exercise(db, exercise) do
    puts "Invalid exercise. Please retry."
    exercise = gets.chomp
  end
  exercise_id = db.execute("SELECT id FROM exercises WHERE name=?", exercise)
  exercise_id = exercise_id[0][0]

  results = db.execute("SELECT * FROM exercises_users WHERE user_id=? AND exercise_id=?", [user_id, exercise_id])
  puts "You last did #{results[0][1]} reps of #{exercise} at #{results[0][1]} pounds"

end