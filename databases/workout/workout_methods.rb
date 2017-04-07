require 'sqlite3'

def create_database
  db = SQLite3::Database.new("workout.db")
  
  create_users_table = <<-SQL
    CREATE TABLE IF NOT EXISTS users(
      id INTEGER PRIMARY KEY,
      first_name VARCHAR(255),
      last_name VARCHAR(255),
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
      user_id INT
    )
  SQL

  db.execute(create_users_table)
  db.execute(create_exercises_table)
  db.execute(create_join_table)

end