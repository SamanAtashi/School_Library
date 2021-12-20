class List_All_Rentals_Class
  def initialize(rentals, people)
    @rentals = rentals
    @people = people
  end

  def list_rentals_by_person_id
    clear
    puts @rentals
    @people.each do |person|
      puts person.id
    end
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
  end
end
