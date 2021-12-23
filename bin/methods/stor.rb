require 'json'

class Storing
  def initialize(arr)
    @books = arr
  end

  def stores_data
    data = []
    @books.each do |book|
      data.push([book.title, book.author])
    end
    puts data
    if !File.exist?("./data/books.json")
      File.new("./data/books.json", "w+")
    end
    File.open("./data/books.json", "w") do |f|
      f.write(data.to_json)
    end
  end
end