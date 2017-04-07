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

  create_exercises_table = <<-SQL
    CREATE TABLE IF NOT EXISTS exercises(
      id INTEGER PRIMARY KEY,
      name VARCHAR(255),
      reps INT,
      weight INT
    )
  SQL

  create_join_table = <<-SQL
    CREATE TABLE IF NOT EXISTS exercises_users(
      exercise_id INT,
      user_id INT,
      FOREIGN KEY (user_id) REFERENCES users(id),
      FOREIGN KEY (exercise_id) REFERENCES exercises(id)
    )
  SQL

  db.execute(create_users_table)
  db.execute(create_exercises_table)
  db.execute(create_join_table)
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

# add a user to the table
def add_user(db, username)
  puts "What is the age of the new user?"
  age = gets.chomp
  db.execute("INSERT INTO users (username, age) VALUES (?, ?)", [username, age])
  puts "#{username} was added to the table"
end