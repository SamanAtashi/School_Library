require_relative '../classes/actual_books'
require './utilities/clearing_terminal'
require './methods/added_msg'

class CreateBookClass
  def initialize(books)
    @books = books
  end

  def creates_a_book(bookTitle, bookAuthor)
    clear
    title = bookTitle
    author = bookAuthor
    new_book = ActualBook.new(title, author)
    @books << new_book
    added_msg('Book')
  end

  def ask_info
    clear
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    creates_a_book(title, author)
  end
end
