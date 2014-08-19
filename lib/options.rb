def make_strain
  puts "Whats the strain called ?"
  name = gets.chomp
  puts "whats it smell like?"
  smell = gets.chomp
  puts "how long does it take to bloom?"
  bloom = gets.chomp
  puts "O.k. so is this right?"
  space
  puts "its called: \"#{name}\", it smells like: \"#{smell}\", and it takes \"#{bloom}\" weeks to bloom?"
  space
  puts 'Press "Y" if so'
  puts 'Press "N" to re enter info'
  puts "Or else if you'd like to go back to the Main Menu press M"
  case gets.chomp.upcase
  when "Y"
    new_strain = Strain.new({name: "#{name}", smells:  "#{smell}", bloom: "#{bloom}"})
    new_strain.save
    puts "Add another strain? Press Y"
    puts "Return to main menu? Press M"
    end
    case gets.chomp.upcase
    when 'Y'
      make_strain
    when 'M'
      main_menu
    end
  end


def make_dispensary
 puts "What is the Dispensary name?"
 name = gets.chomp
 new_dispensary = Dispensary.new(name: name)
 new_dispensary.save
 puts "Would you like to add another strain?"
 puts "Press Y to make another, press N for main menu"
 case gets.chomp.upcase
 when "Y"
   make_dispensary
 when "N"
   main_menu
 else
   puts "Invalid!"
 end
end

def list_dispense
  puts "Here is a list of Dispensaries"
  count = 0
  results = Dispensary.all
  results.each do |result|
    puts "#{result.name}            #{count}"
    count += 1
  end
  puts "What dispensary would you like use? Enter it's corresponding number"
  numba = gets.chomp.to_i
  dispense_id = Dispensary.all[numba].id
end


def insert_strain
  puts "Here is a list of Dispensaries"
  count = 0
  count2 = 0
  results = Dispensary.all
  results.each do |result|
    puts "#{result.name}            #{count}"
    count += 1
  end
  puts "What dispensary would you like to add a strain to? Enter it's corresponding number"
  numba = gets.chomp.to_i
  dispense_id = Dispensary.all[numba].id
  puts "here is a list of strains"
  strains = Strain.all
  strains.each do |strain|
    puts "#{strain.name}            #{count2}"
    count2 += 1
  end
  puts "What strain would you like to add? Please enter corresponding number"
  numba2 = gets.chomp.to_i
  strain_id = Strain.all[numba2].id
  puts "Thanks!"
  Dispensary.insert_dispense_strain(dispense_id, strain_id)
  puts "Insert another strain? Press Y"
  puts "Return to main menu? Press M"
  case gets.chomp.upcase
  when "Y"
    insert_strain
  when "M"
    main_menu
  else
    puts "Invalid!"
  end
end

def show_dispense_strain
  puts "Here is a list of Dispensaries"
  count = 0
  results = Dispensary.all
  results.each do |result|
    puts "#{result.name}            #{count}"
    count += 1
  end
  puts "What dispensary would you like use? Enter it's corresponding number"
  numba = gets.chomp.to_i
  puts "Here are their strains"
  dispense_id = Dispensary.all[numba].id
  results2 = Dispensary.select_strains_by_dispensary(dispense_id)
  results2.each do |result|
    puts "#{result.name}"
  end
  puts "Press anything to go back to main menu"
  if gets.chomp
    main_menu
  end

end
