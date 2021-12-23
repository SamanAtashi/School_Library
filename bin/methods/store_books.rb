# # json exists? 
#     # Yes --> write
#     # no --> create JSON -->write
# require 'json'


# class StoreBooksClass
#     def initialize(arr)
#         @arr_of_books = arr
#     end

#     def stores_books
#         data = JSON.generate(@arr_of_books)
#         if File.exist?("./data/books.json")
#             File.write("./data/books.json", data, mode: "a")
#             newData = JSON.parse(File.read("./data/books.json"))
#             File.write
#         else
#             "note abva"
#         end
#     end
# end