require_relative '../classes/actual_books'
require './utilities/clearing_terminal'
require './methods/added_msg'

class CreateBookClass
  def initialize(books)
    @books = books
  end

  def creates_a_book
    clear
    title = ask_for_title
    author = ask_for_author
    new_book = ActualBook.new(title, author)
    @books << new_book
    added_msg('Book')
  end

  def ask_for_title
      print 'Title: '
      gets.chomp
  end

  def ask_for_author
      print 'Author: '
      gets.chomp
  end
end
