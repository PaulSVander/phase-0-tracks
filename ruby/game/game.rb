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
  attr_reader :max_guesses, :total_guesses, :is_over
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
    puts "#{@displayed_word}"
    @is_over = false
  end

  def guess(char)

    correct_guess = false

    if @letters_guessed.include?(char)
      puts "You already guessed that letter. Try another"
    end

    index = 0
    @target_word_arr.each do |target_letter|
      if char == target_letter
        @displayed_word[index] = char
        @correct_guess = true
      end
      index += 1
    end

    @total_guesses += 1
    if !correct_guess && @total_guesses == @max_guesses
      puts "You're out of guesses!"
    elsif !correct_guess 
      puts "Incorrect guess!"
    elsif displayed_word == target_word
      @is_over = true
    end

    puts "#{@displayed_word}"
  end
end

Game.new("unicorn")