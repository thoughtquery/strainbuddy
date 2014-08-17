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
    new_strain = Strain.new{name: "#{name}", smells: "#{smell}", bloom: "#{bloom}"}
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


def insert_strain
  puts "Here is a list of Dispensaries"
  count = 0
  results = Dispensary.all
  results.each do |result|
    puts "#{result.name}            #{count}"
    count += 1
  end
  binding.pry
end
