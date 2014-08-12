
def space
  puts "\n"
end

  def make_strain
    the_strain = []
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

    loop do
      answer = gets.chomp.upcase


          case answer
            when 'Y'

              Strain.new(name: name, smells: smell, bloom: bloom)
              puts 'Press "A" to make another strain or "M" to go back to main menu'
              back = gets.chomp

                    case back
                      when 'A'
                        make_strain
                      when 'B'
                        main_menu
                    end

            when 'N'
              make_strain
            when 'M'
              main_menu
            else
              puts "Couldn't understand you dude, try again"
            end
          end
make_strain

    end
