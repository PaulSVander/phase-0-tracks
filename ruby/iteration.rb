def status_message
  puts "before block"
  yield
  puts "after block"
end

status_message { puts "This is a block" }

colors_array = ['red', 'blue', 'green', 'yellow']

actor_hash = {
  matt_damon: "Jason Bourne",
  tyler_perry: "Madea",
  tom_cruise: "Ethan Hunt",
  brue_willis: "John McClane"
}

puts "color_arrays data before .each is #{colors_array}"
colors_array.each { |color| puts "The current color is #{color}" }
puts "colors_arrays data after .each is #{colors_array}"


puts "color_arrays data before .map! is #{colors_array}"
colors_array.map! { |color| color.upcase }
puts "color_arrays data after .map! is #{colors_array}"


puts "actor_hash before .each is #{actor_hash}"
actor_hash.each { |actor, role| puts "#{actor} played as #{role}" }
puts "actor_hash after .each is #{actor_hash}"

int_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
int_array2 = [5, 3, 5, 7, 29, 20, 5, 6]
number_letter_hash = {
  "a" => 100,
  "b" => 200,
  "c" => 300,
  "d" => 400
}


p int_array.delete_if { |number| number < 7 }
p int_array.select { |number| number > 3 }

p number_letter_hash.reject { |letter, number| letter < 'c' }
p int_array2.drop_while { |number| number < 10 }



