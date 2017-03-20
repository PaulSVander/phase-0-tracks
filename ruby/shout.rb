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