require_relative 'corrector'
# require_relative 'person.rb'
# require_relative 'student.rb'
# require_relative 'teacher.rb'
# require_relative 'rentals.rb'
# require_relative 'books.rb'
# require_relative 'classroom.rb'

class App
  def clear
    system 'clear'
  end

  def run
    clear
    puts 'Welcome to School Library App!'
    puts
    show_menu
  end

  def show_menu
    options = ['List all books', 'List all people', 'Create a person', 'Create a book', 'Create a rental',
               'List all rentals for a given person id', 'Exit']
    options.each_with_index { |option,idx| puts "#{idx+1} - #{option}"}
    get_option
  end
end

def main
  app = App.new
  app.run
end

main
