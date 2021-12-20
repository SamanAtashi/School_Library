require_relative '../classes/actual_books'
require './utilities/clearing_terminal'
require './methods/added_msg'

class Create_Book_Class
  def initialize(books)
    @books = books
  end

  def creates_a_book
    clear
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    new_book = Actual_Book.new(title, author)
    @books << new_book
    added_msg('Book')
  end
end
