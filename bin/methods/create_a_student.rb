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