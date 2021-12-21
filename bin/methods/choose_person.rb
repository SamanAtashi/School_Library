require_relative '../utilities/clearing_terminal'
require_relative './create_a_teacher'
require_relative './create_a_student'

class Choose_Type_Of_Person_Class
  def initialize(people)
    @people = people
    @teacher_creation = Create_New_Teacher.new(@people)
    @student_creation = Create_New_Student.new(@people)
  end

  def choose_a_person
    clear
    print 'Do you want to create a student (1) or teacher (2): '
    loop do
      option = gets.chomp
      case option
      when '1'
        @student_creation.create_a_student
        break
      when '2'
        @teacher_creation.creates_a_teacher
        break
      else
        clear
        puts 'Invalid input. Kindly type 1 or 2.', "\n"
      end
    end
  end
end
