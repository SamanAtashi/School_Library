class List_All_Books_Class
  def initialize(books)
    @books = books
  end

  def lists_all_books
    if @books.empty?
      puts 'There are no books yet! Add a book.'
      puts
    else
      @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
      puts
    end
  end
end