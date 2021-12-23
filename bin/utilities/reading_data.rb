require 'json'
require './utilities/read_books.rb'
require './utilities/read_people.rb'

class ReadingDataClass
  def initialize(books,people)
    @books = books
    @people = people
  end

    def run
        read_book_class = ReadBooksClass.new(@books)
        read_book_class.retrieves_books

        read_people_class = ReadPeopleClass.new(@people)
        read_people_class.retrieves_people


    end

  
end
