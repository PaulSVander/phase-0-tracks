class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age


  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0    
  end

  def speak
    puts "Ho, ho, ho! Haaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebreate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

  def about
    puts "Gender: #{@gender}\nEthnicity: #{@ethnicity}\nReindeer rank: #{@reindeer_ranking}\nAge: #{@age}"
  end
end

santas = []
example_genders = ["male", "agender", "asexual", "cisgender", "Trans Female"]
example_ethnicities = ["Indian", "Russian", "Italian", "Native American", "Brazilian"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

puts "-----Before test code-----"
santas[0].about

santas[0].celebreate_birthday
santas[0].get_mad_at("Dasher")
santas[0].gender = "female"
puts "santas.age returns #{santas[0].age}"
puts "santas.ethnicity returns #{santas[0].ethnicity}"

puts "-----After test code-----"
santas[0].about

80.times do 
  nick = Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "--------------------------"
  nick.age = rand(140)
  puts nick.age
  puts nick.gender
  puts nick.ethnicity
end