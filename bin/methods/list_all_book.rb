class Books
  def initialize(books)
    @books = books
  end

  def printing_books
    print 'My books'
  end

  def list_all_books
    if @books.empty?
      puts 'There are no books yet! Add a book.'
      puts
    else
      @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
      puts
    end
  end
end