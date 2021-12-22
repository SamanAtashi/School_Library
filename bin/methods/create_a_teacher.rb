require_relative '../classes/teacher'

class CreateNewTeacher
  def initialize(people)
    @people = people
  end

  def creates_a_teacher
    clear
    new_teacher = Teacher.new(teacher_specialization, teacher_age, teacher_name)
    @people << new_teacher
    added_msg('Teacher')
  end

  def teacher_age
    print 'Age: '
    age = gets.chomp.to_i
  end

  def teacher_name
    print 'Name: '
    name = gets.chomp
  end

  def teacher_specialization
    print 'Specialization: '
    specialization = gets.chomp
  end
end
