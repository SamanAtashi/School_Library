require 'json'

class Retrieve_Book_Class
  # first check if it exists
  # yes --> check if it is empty?
  # empty ==> return []
  # not empty ==> data
  # not --> return []
  def retrieves_books
    file = File.open "./data/books.json"
    data = JSON.load file
JSON.dump(data)
    # if !File.exist?('../data/books.json') || File.empty?('../data/books.json')
    #   []
    # else
    #   data = File.read
    #     p data
    #   JSON.generate(["saman"])
    # end
  end
end

temp = Retrieve_Book_Class.new

p temp.retrieves_books
