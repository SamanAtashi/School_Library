require 'json'

class StorePeopleClass
  def initialize(people)
    @people = people
  end

  def stores_people
    students = []
    teachers = []

    @people.each do |person|
      puts person.class
      if person.class === 'Teacher'
        puts 'it is a T'
        # teachers.push([person.specialization, person.age, person.name])
      end
      if person.class === 'Student'
        puts 'it is a S'
        # students.push([person.age, person.name, person.parent_permission])
      end
    end

    File.new('./data/students.json', 'w+') unless File.exist?('./data/students.json')
    File.new('./data/teachers.json', 'w+') unless File.exist?('./data/teachers.json')

    File.open('./data/students.json', 'w') do |f|
      f.write(students.to_json)
    end

    File.open('./data/teachers.json', 'w') do |f|
      f.write(teachers.to_json)
    end
  end
end
