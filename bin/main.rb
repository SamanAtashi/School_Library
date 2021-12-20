# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/ClassLength
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Style/IdenticalConditionalBranches
require './methods/list_all_book'
class App
  def initialize
    @rentals = []
    @books = []
    @list_books = Books.new(@books)
    @people = []
  end

  def clear
    system 'clear'
    puts
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
    options.each_with_index { |option, idx| puts "#{idx + 1} - #{option}" }
    getting_option
  end

  def getting_option
    option = gets.chomp
    case option
    when '1'
      print @list_books.list_all_books
    when '2'
      list_all_people
    when '3'
      create_a_person
    when '4'
      create_a_book
    when '5'
      create_a_rental
    when '6'
      list_rentals_by_person_id
    when '7'
      clear
      puts 'Thank you for using this app!😀'
      puts
    else
      clear
      puts '⚠️  Please enter a number between 1 and 7'
      puts
      show_menu
    end
  end
end

def main
  app = App.new
  app.run
end

main
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/ClassLength
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Style/IdenticalConditionalBranches
