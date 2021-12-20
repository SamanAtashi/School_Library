require_relative '../utilities/clearing_terminal'
require_relative './create_a_teacher'

class Choose_Type_Of_Person_Class
  def initialize(people)
    @people = people
    @anything = Create_New_Teacher.new(@people)
  end

  def choose_a_person
    clear
    print 'Do you want to create a student (1) or teacher (2) ["exit" back to menu]: '
    loop do
      option = gets.chomp
      case option
      when '1'
        create_a_student
        break
      when '2'
        @anything.create_a_teacher
        break
      when 'exit'
        clear
        show_menu
        break
      else
        clear
        puts 'Invalid input. Kindly type 1 or 2 ["exit" back to menu].'
        puts
      end
    end
  end
end
