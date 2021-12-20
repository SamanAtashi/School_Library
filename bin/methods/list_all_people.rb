def list_all_people
  if @people.empty?
    clear
    puts 'There are no people yet! Add a person.'
    puts
  else
    clear
    @people.map { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    puts
  end
  show_menu
end
