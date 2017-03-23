class Puppy

  def initialize
    puts "Initializing new puppy..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number_of_barks)
    number_of_barks.times { puts "Woof! " }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    return human_years * 7
  end

  def eat_shoes(shoe)
    puts "I ate your #{shoe}!"
  end

end

fido = Puppy.new
fido.fetch("Squeaky bone")

fido.speak(4)

fido.roll_over

puts fido.dog_years(3)

fido.eat_shoes("slippers")

class Bodybuilder

  def initialize
    puts "Initializing new bodybuilder..."
  end

  def benchpress
    puts "Did a bench press"
  end

  def curl
    puts "Did a curl"
  end

end

bodybuilder_array = []

50.times do 

  bodybuilder_array << Bodybuilder.new

end

bodybuilder_array.each do |bodybuilder|

  bodybuilder.benchpress
  bodybuilder.curl

end