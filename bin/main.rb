require_relative 'corrector'
# require_relative 'person.rb'
require_relative 'student'
require_relative 'teacher'
require_relative 'rentals'
require_relative 'books'
# require_relative 'classroom.rb'

class App
  def initialize
    @rentals = []
    @books = []
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

  def added_msg(input)
    clear
    puts "#{input} created successfully ✅"
    puts
  end

  def show_menu
    options = ['List all books', 'List all people', 'Create a person', 'Create a book', 'Create a rental',
               'List all rentals for a given person id', 'Exit']
    options.each_with_index { |option, idx| puts "#{idx + 1} - #{option}" }
    get_option
  end

  def get_option
    option = gets.chomp
    case option
    when '1'
      list_all_books
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

  def list_all_books
    if @books.empty?
      clear
      puts 'There are no books yet! Add a book.'
      puts
    else
      clear
      @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
      puts
    end

    show_menu
  end

  def create_a_book
    clear
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    new_book = Book.new(title, author)
    @books << new_book

    added_msg('Book')
    show_menu
  end

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

  def create_a_person
    clear
    print 'Do you want to create a student (1) or teacher (2) ["exit" back to menu]: '

    loop do
      option = gets.chomp
      case option
      when '1'
        create_a_student
        break
      when '2'
        create_a_teacher
        break
      when 'exit'
        clear
        show_menu
        break
      else
        clear
        puts 'Invalid input. Kindly type 1 or 2 ["exit" back to menu].'
        puts
      end
    end
  end

  def create_a_student
    clear
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase

    new_student = Student.new(age, name, parent_permission == 'y')

    @people << new_student

    added_msg('Student')
    show_menu
  end

  def create_a_teacher
    clear
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    new_teacher = Teacher.new(specialization, age, name)

    @people << new_teacher

    added_msg('Teacher')
    show_menu
  end

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
      next unless temp === 'exit'
      puts

      clear
      show_menu
      break
    end
  end
end

def main
  app = App.new
  app.run
end

main
