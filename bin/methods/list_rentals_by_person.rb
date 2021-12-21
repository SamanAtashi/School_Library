class List_All_Rentals_Class
  def initialize(rentals, people)
    @rentals = rentals
    @people = people
  end

  def list_rentals_by_person_id
    clear

    @people.each do |person|
      puts "#{person.name} -- #{person.id}"
    end
    puts

    print 'ID of person: '
    id = gets.chomp.to_i
    puts
    puts 'Rentals:'
    @rentals.each do |rental|
      puts "🔵 Date: #{rental.date}, Book '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
    end
    puts
  end
end
