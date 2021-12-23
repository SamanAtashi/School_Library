require 'json'
require './methods/create_a_book'

class ReadingDataClass
  def initialize(books_arr)
    @list_of_books = books_arr
  end

  def retrieve_data
    if File.exist?('./data/books.json')
      file = File.read('./data/books.json')
      books = JSON.parse(file)

      create_book_new_class = CreateBookClass.new(@list_of_books)
      books.each { |book| create_book_new_class.creates_a_book(book[0], book[1]) }
      clear
    end
  end
end
