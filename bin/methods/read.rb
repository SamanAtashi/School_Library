require 'json'
require './methods/create_a_book'

class Reading
  def initialize(booksArr)
    @list_of_books = booksArr
  end

  def retrieve_data
    if File.exists?("./data/books.json")
      file = File.read("./data/books.json")
      books = JSON.parse(file)

      create_book_new_class = CreateBookClass.new(@list_of_books)
      books.each { |book| create_book_new_class.creates_a_book(book[0],book[1]) }
    end
  end
end