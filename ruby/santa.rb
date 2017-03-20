class Santa

  def initialize
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

Nick = Santa.new
Nick.speak
Nick.eat_milk_and_cookies("sugar cookie")