require_relative './store_books'
require_relative './store_people'

class StoringDataClass
  def initialize(books, people)
    @books = books
    @people = people
  end

  def run
    store_books_class = StoreBooksClass.new(@books)
    store_books_class.stores_books

    store_people_class = StorePeopleClass.new(@people)
    store_people_class.stores_people
  end
end
