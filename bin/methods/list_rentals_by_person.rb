def list_rentals_by_person_id
  clear
  print 'ID of person: '
  id = gets.chomp.to_i
  puts
  puts 'Rentals:'
  @rentals.each do |rental|
    puts "  Date: #{rental.date}, Book '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
  end
  puts
  puts 'Type "exit" to go back to menu.'
  loop do
    temp = gets.chomp.downcase
    next unless temp == 'exit'

    puts
    clear
    show_menu
    break
  end