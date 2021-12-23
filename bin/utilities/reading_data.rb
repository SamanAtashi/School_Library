require 'json'
require './utilities/read_books.rb'

class ReadingDataClass
  def initialize(books,people)
    @books = books
    @people = people
  end

    def run
        read_book_class = ReadBooksClass.new(@books)
        read_book_class.retrieves_books
    end

  
end
