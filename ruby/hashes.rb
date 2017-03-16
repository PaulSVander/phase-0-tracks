=begin
Create a hash
Prompt user for client details
After each input, set input equal as value for corresponding key
Print hash
Ask user if they would like to update a key
If user enters none, skip update
If designer enters a key, prompt them for a new value
Set the new value to the key they would like to update
print hash and exit
=end

client = {
  name: nil,
  age: nil,
  number_of_children: nil,
  decor_theme: nil
}

puts "What is the client's name?"
client[:name] = gets.chomp
puts "What is the client's age?"
client[:age] = gets.chomp
puts "How many children does the client have?"
client[:number_of_children] = gets.chomp
puts "What is the client's desired decor theme?"
client[:decor_theme] = gets.chomp

puts client

puts "Would you like to update any fields?"
update = gets.chomp

if update == "none"
  puts "No changes made\n#{client}"
else
  puts "What is the new value?"
  client[update.to_sym] = gets.chomp
  puts "#{update} has been updated\n#{client}"
end
