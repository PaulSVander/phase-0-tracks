=begin
define a method that takes in a name as a string
Separate the first and the last name, and swap them
Split the names into an array of individual characters
loop through each character in the array
-if the character is a 'u', set it equal to 'a'
-if the character is a 'z', set it equal to 'b'
-if the character is a space, do nothing
-if the character is a vowel, set it equal to the next vowel in the alphabet
-if the character is a consonant, set it equal to the next consonant in the alphabet
join the array of characters into a string

=end

def spyname(string)
  split_name = string.split(" ")
  #create a string with the names reversed and split into array of individual letters
  swapped_name = ("#{split_name[1]} #{split_name[0]}").split("")
  vowels = ['a', 'e', 'i', 'o', 'u']


  swapped_name.map! do |c|
    if c == "u"
      c = "a"
    elsif c == "z"
      c = "b"
    elsif c == " "
      c = " "  
    elsif vowels.include?(c)
      c = vowels[vowels.index(c) + 1]       
    else
      c = c.next  
    end
  end

  return swapped_name.join("")
end

alias_hash = {}
input = nil
until input == "quit" do
  puts "Enter a name you would like to convert. Enter 'quit' to quit."
  input = gets.chomp
  if input == "quit"
    break
  else
    alias_hash[input] = spyname(input)
  end
end

alias_hash.each do |key, value|
  puts "#{key}'s spy name is #{value}"
end