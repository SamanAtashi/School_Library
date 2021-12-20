require_relative '../classes/teacher'

class Create_New_Teacher
  def initialize(people)
    @people = people
  end
  def create_a_teacher
    clear
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    new_teacher = Teacher.new(specialization, age, name)
    print new_teacher
    @people << new_teacher
    added_msg('Teacher')
  end
end
