# json exists? 
    # Yes --> write
    # no --> create JSON -->write
require 'json'


class StoreBooksClass
    def initialize(arr)
        @arr_of_books = arr
    end

    def stores_books
        p "start------------"
        if File.exist?("../data/books.json")
            File.write("../data/books.json", "datasss...", mode: "a")
        else
            "note abva"
        end
        p "end--------------"
    end
end