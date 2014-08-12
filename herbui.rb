require './lib/dispensary'
require './lib/strain'
require './lib/options'
require 'pg'
require 'pry'
require 'rspec'

def space
  puts "\n"
end


puts   '                  .
                       M
                      dM
                      MMr
                     4MMML                  .
                     MMMMM.                xf
     .              "MMMMM               .MM-
      Mh..          +MMMMMM            .MMMM
      .MMM.         .MMMMML.          MMMMMh
       )MMMh.        MMMMMM         MMMMMMM
        3MMMMx.      MMMMMMf      xnMMMMMM"
         *MMMMM      MMMMMM.     nMMMMMMP"
          *MMMMMx    "MMMMM\    .MMMMMMM=
           *MMMMMh   "MMMMM"   JMMMMMMP
             MMMMMM   3MMMM.  dMMMMMM            .
              MMMMMM  "MMMM  .MMMMM(        .nnMP"
  =..          *MMMMx  MMM"  dMMMM"    .nnMMMMM*
    "MMn...      MMMMr  MM   MMM"   .nMMMMMMM*"
     "4MMMMnn..   *MMM  MM  MMP"  .dMMMMMMM""
       ^MMMMMMMMx.  *ML "M .M*  .MMMMMM**"
          *PMMMMMMhn. *x > M  .MMMM**""
             ""**MMMMhx/.h/ .=*"
                      .3P"%....
                    nP"     "*MMnx
                    '
puts "Hey bro!"
puts "I m you strain buddy!!"


  def main_menu
    loop do
      space
      puts "Enter strain information, press A"
      puts "Enter dispensary information, press B"
      puts "List strains, press C"
      puts "List dispensaries, press D"
      first_choice = gets.chomp.upcase
        case first_choice
            when 'A'
              make_strain
           end


end
end
main_menu
