def create_a_book
  clear
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  new_book = Book.new(title, author)
  @books << new_book
  added_msg('Book')
  show_menu
end