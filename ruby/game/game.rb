=begin
  
Create a game
Prompt the user for a target word
split the target word into an array of individual characters
prompt the user for a guess
-if the guess is a repeat, prompt them for another guess
-iterate through the array and check if the guess matches any letters
  -if they match, expose those letters and display them
  -if they don't match, add 1 to the wrong guess counter
if they reached the max number of guess, print lose message and quit

=end

class Game
  attr_reader :is_over, :displayed_word
  attr_accessor :target_word

  def initialize(target_word)
    @target_word = target_word
    @target_word_arr = target_word.split('')
    @displayed_word = []
    @target_word_arr.length.times do
      @displayed_word << "_"
    end
    @total_guesses = 0
    @max_guesses = target_word.length + 6
    @letters_guessed = []
    puts "#{@displayed_word.join(" ")}"
    @is_over = false
  end

  def guess(char)

    correct_guess = false

    if @letters_guessed.include?(char)
      puts "You already guessed that letter."
      return nil
    end

    index = 0
    @target_word_arr.each do |target_letter|
      if char == target_letter
        @displayed_word[index] = char
        correct_guess = true
      end
      index += 1
    end

    @total_guesses += 1 unless correct_guess
    if @total_guesses == @max_guesses
      puts "You're out of guesses!"
      puts "#{@target_word} was the answer"
      @is_over = true
    elsif @displayed_word.join("") == target_word
      puts "You won!"
      @is_over = true
    elsif !correct_guess 
      puts "Incorrect guess!"
      puts "#{@total_guesses} out of #{@max_guesses} guesses used"
    end

    @letters_guessed << char
  end
end


puts "What would you like the word to be?"
word = gets.chomp
current_game = Game.new(word)

while !current_game.is_over do
  puts "What is your guess?"
  guess = gets.chomp
  current_game.guess(guess)
  puts "#{current_game.displayed_word.join(" ")}"
end