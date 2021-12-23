require 'json'
require './methods/create_a_book'

class ReadPeopleClass
    def initialize(people)
        @people = people
    end

    def retrieves_people
        if File.exist?('./data/students.json')
        file = File.read('./data/students.json')
        students = JSON.parse(file)

        create_book_student = 
        books.each { |book| create_book_new_class.creates_a_book(book[0], book[1]) }
        clear
        end
      end
    
end