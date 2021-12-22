require './methods/store_books'

class StoringDataClass
 
def initialize(books)
    @storing = StoreBooksClass.new(books)
end
  
    def stores_data
        @storing.stores_books
    end
end