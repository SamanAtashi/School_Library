require './books'

class Create_Book
  def initialize(books)
    @books = books
  end

  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    new_book = Book.new(title, author)
    @books << new_book
  end
end