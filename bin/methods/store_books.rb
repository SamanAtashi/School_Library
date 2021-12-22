require 'json'

class StoreBooksClass
    def initialize(arr)
        @arr_of_books = arr
    end

    def stores_books
        data = JSON.generate(@arr_of_books)
        if !File.exist?("./data/books.json")
            File.new("./data/books.json", "w+")
        end
        File.write("./data/books.json", data)
    end
end