def list_all_people
  clear
  if @people.empty?
    puts 'There are no people yet! Add a person.'
  else
    @people.map { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end
  puts
  show_menu
end
