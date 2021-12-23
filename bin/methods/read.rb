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
      @list_of_books = books
      create_book_new_class = CreateBookClass.new(@list_of_books)
      books.each { |book| p book[0] }
    end
  end
end