# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/CyclomaticComplexity
require './methods/list_all_book'
require './methods/create_a_book'
require './utilities/clearing_terminal'
require './methods/choose_person'

class App
  def initialize
    @list_of_books = []
    @list_all_books_class = List_All_Books_Class.new(@list_of_books)
    @create_book_class = Create_Book_Class.new(@list_of_books)
    
    @people = []
    @choose_type_of_person = Choose_Type_Of_Person_Class.new(@people)

    @rentals = []
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
      @list_all_books_class.lists_all_books
      show_menu
    when '2'
      list_all_people
      show_menu
    when '3'
      @choose_type_of_person.choose_a_person
      show_menu
    when '4'
      @create_book_class.creates_a_book
      show_menu
    when '5'
      create_a_rental
      show_menu
    when '6'
      list_rentals_by_person_id
      show_menu
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
# rubocop:enable Metrics/CyclomaticComplexity
