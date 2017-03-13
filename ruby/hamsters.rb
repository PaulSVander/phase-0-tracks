puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is the hamster's volume level on a scale from 1-10?"
hamster_volume = gets.chomp
hamster_volume = hamster_volume.to_i

puts "What is the hamster's fur color?"
hamster_color = gets.chomp

puts "Is the hamster a good candidate for adoption?"
good_candidate = gets.chomp
if good_candidate.downcase == "yes"
  good_candidate = true
elsif good_candidate.downcase == "no"
  good_candidate = false
end

puts "What is the hamsters estimated age?"
hamster_age = gets.chomp
if hamster_age.empty?
  hamster_age = nil
else 
  hamster_age = hamster_age.to_i
end

summary = "The hamster's name is #{hamster_name}. Their fur color is #{hamster_color}." +
          " Their volume level on a scale of 1-10 is #{hamster_volume}."

if hamster_age == nil
  summary += " #{hamster_name}'s age is unknown"
else
  summary += " #{hamster_name} is #{hamster_age} year(s) old"
end

if good_candidate
  summary += " and is a good candidate for adoption."
else
  summary += " and is not a good candidate for adoption."
end

puts summary