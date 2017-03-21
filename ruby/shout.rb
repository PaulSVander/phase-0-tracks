=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " =D"
  end

end

puts Shout.yell_angrily("I stubbed my toe")
puts Shout.yelling_happily("I found 100 bucks")
=end

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " =D"
  end

end

class Orc
  include Shout
end

class Scientist
  include Shout
end

gorgol = Orc.new
puts gorgol.yell_angrily("We haven't eaten in days")
puts gorgol.yelling_happily("I found the hobbits")

rick = Scientist.new
puts rick.yell_angrily("I lost my portal gun")
puts rick.yelling_happily("I made a new interdimensional cable box")