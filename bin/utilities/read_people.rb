require 'json'
require './classes/student'
require './classes/teacher'

class ReadPeopleClass
  def initialize(people)
    @people = people
  end

  def retrieves_people
    if File.exist?('./data/students.json')
      file = File.read('./data/students.json')
      students = JSON.parse(file)

      students.each do |st| 
        create_student_class = Student.new(st[0],st[1],st[2])
        @people << create_student_class
      end
      clear
    end

    if File.exist?('./data/teachers.json')
      file = File.read('./data/teachers.json')
      teachers = JSON.parse(file)

      teachers.each do |tc| 
        create_teacher_class = Teacher.new(tc[0],tc[1],tc[2])
        @people << create_teacher_class
      end
      clear
    end
  end
end
