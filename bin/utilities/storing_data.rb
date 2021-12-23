require 'json'

class StoringDataClass
  def initialize(arr)
    @books = arr
  end

  def stores_book
    data = []
    @books.each do |book|
      data.push([book.title, book.author])
    end
    puts data
    File.new('./data/books.json', 'w+') unless File.exist?('./data/books.json')
    File.open('./data/books.json', 'w') do |f|
      f.write(data.to_json)
    end
  end
end
