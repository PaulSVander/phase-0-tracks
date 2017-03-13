puts "How many employees will be processed?"
employees = gets.chomp
employees = employees.to_i 

until employees == 0 do
  puts "What is your name"
  applicant_name = gets.chomp
  puts "How old are you?"
  applicant_age = gets.chomp
  puts "What year were you born?"
  applicant_year_born = gets.chomp
  puts "Should we order garlic bread for you?"
  garlic_bread = gets.chomp
  puts "Would you like to enroll in the company's health insurance?"
  health_insurance = gets.chomp

  if (2017 - applicant_year_born.to_i) == applicant_age.to_i
    correct_age = true
  else
    correct_age = false
  end

  if garlic_bread.downcase == "yes"
    hates_garlic = false
  elsif garlic_bread.downcase == "no"
    hates_garlic = true
  end

  if health_insurance.downcase == "yes"
    waive_insurance = false
  elsif health_insurance.downcase == "no"
    waive_insurance = true
  end

  if correct_age && (!hates_garlic || !waive_insurance)
    result = "Probably not a vampire."
  end
  
  if !correct_age && (hates_garlic || waive_insurance)
    result = "Probably a vampire."
  end
  
  if !correct_age && (hates_garlic && waive_insurance)
    result = "Almost certainly a vampire."
  end
  
  if (applicant_name == "Drake Cula") || (applicant_name == "Tu Fang")
    result = "Definitely a vampire."
  end
  
  if result == nil
    result = "Results inconclusive."
  end

  allergy = nil
  until allergy == "done" do
    puts "What are you allergic to? Type enter after each allergy and done when finished."
    allergy = gets.chomp
    if allergy == "sunshine"
      result = "Probably a vampire."
      break
    end
  end

  puts result

  employees -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
