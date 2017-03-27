def new_list(list)

  list_array = list.split(" ")

  list_hash = {}

  list_array.each do |item|
    list_hash[item] = 1
  end

  list_hash

  # print_list

end

def add_item(list, item, quantity)

  list[item] = quantity

  list 

end

def remove_item(list, item)

  return "No item" if !list[item]

  list.delete(item)

  list

end

def update(list, item, quantity)

  return "No item" if !list[item]


  list[item] = quantity

  list

end

def print_list(list)

  puts "Grocery list:"

  list.each do |item, quantity|

    puts "#{item} - quantity #{quantity}"

  end

end
=begin
grocery = new_list("apples oranges lettuce cheese milk")
p grocery

add_item(grocery, "lemonade", 2)
add_item(grocery, "tomatoes", 3)
add_item(grocery, "onions", 1)
add_item(grocery, "ice cream", 4)

remove_item(grocery, "lemonade")

update(grocery, "ice cream", 1)

print_list(grocery)
=end

puts "What items would you like to put on your list?"
user_list_string = gets.chomp
user_list = new_list(user_list_string)


puts "Select an option. Update list, add to list, remove from list, print list"
user_choice = gets.chomp
puts "Select an item"
selected_item = gets.chomp


case user_choice
when user_choice == "add to list"
  puts "How many would you like?"
  new_item_quantity = gets.chomp
  add_item(user_list, selected_item, new_item_quantity)
when user_choice == "remove from list"
  puts "What item would you like to remove"
  remove_item(user_list, selected_item)
when user_choice == "update list"
  puts "What is the new quantity?"
  update_quantity = gets.chomp
  update(user_list, selected_item, update_quantity)
end