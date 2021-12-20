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