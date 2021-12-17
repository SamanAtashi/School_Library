require './person'

class Student < Person
  attr_accessor :name
  attr_reader :classroom

  def initialize(name)
    @name = name
  end

  def classroom=(sth)
    @classroom = sth
    sth.students.push(self) unless sth.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
