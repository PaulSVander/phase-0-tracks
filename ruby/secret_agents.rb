=begin 
 Receive a string input
 Loop through each letter in the string
 -If the letter is z, set it equal to a
 -If the letter is a space, do nothing
 -Otherwise set the letter to the next letter in the alphabet
 Move to the next letter
 Output modified string
=end

def encrypt(string_input)
  index = 0
  
  while index < string_input.length
    if string_input[index] == "z"
      string_input[index] = "a"
    elsif string_input[index] != " "
      string_input[index] = string_input[index].next
    end
    index += 1
  end  

  puts string_input
  return string_input
end

=begin
 Receive a string input
 Loop through each character in string
 -Find the index of that character in the alphabet
  subtract 1 from that index and set the letter equal to the one in the new index
 -If it's a space, do not modify
 Output modified string
=end 

def decrypt(string_input)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while index < string_input.length
    if string_input[index] == "a"
      string_input[index] = "z"
    elsif string_input[index] != " "
      index_of_previous = alphabet.index(string_input[index]) - 1
      string_input[index] = alphabet[index_of_previous]
    end
    index += 1
  end

  puts string_input
  return string_input
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# decrypt(encrypt("swordfish"))

=begin
 Ask user whether they want to encrypt or decrypt
 Ask them for the password
 If they want to encrypt the password, call the encrypt method
 If they want to decrypt the password, call the decrypt method
 Print encrypted or decrypted password to the console
=end

puts "Would you like to decrypt or encrypt a password?"
option = gets.chomp
puts "What is the password?"
password = gets.chomp

if option == "encrypt"
  encrypt(password)
else option == "decrypt"
  decrypt(password)
end
