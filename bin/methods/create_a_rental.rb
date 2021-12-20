def create_a_rental
  clear
  puts 'Select a book by number:'
  @books.each_with_index { |book, idx| puts "  #{idx}) Title: #{book.title}, Author: #{book.author}" }
  book_id = gets.chomp.to_i
  puts
  puts 'Select a person by number (not id):'
  @people.each_with_index do |person, idx|
    puts "  #{idx}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  person_id = gets.chomp.to_i
  puts
  print 'Date: '
  date = gets.chomp.to_s
  new_rental = Rental.new(date, @people[person_id], @books[book_id])
  @rentals << new_rental
  added_msg('Rent')
  show_menu
end