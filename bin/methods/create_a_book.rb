require '../classes/books.rb'

class Create_Book_Class
  def initialize(books)
    @books = books
  end

  def creates_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    new_book = Actual_Book.new(title, author)
    @books << new_book
  end
end