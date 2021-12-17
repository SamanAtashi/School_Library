require_relative 'corrector.rb'
# require_relative 'person.rb'
# require_relative 'student.rb'
# require_relative 'teacher.rb'
# require_relative 'rentals.rb'
# require_relative 'books.rb'
# require_relative 'classroom.rb'

class App

    def clear 
        system "clear"
    end

    def run
        clear
        puts "Welcome to School Library App!"
    end    
end

def main
    app = App.new()
    app.run
end

main