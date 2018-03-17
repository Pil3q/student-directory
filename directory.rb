def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit the return twice"
  #empty array to  start with
  students = []
  #let's get it from the user
  name = gets.chomp
  #setting the loop if there is one provided
  while !name.empty? do
    #hash hash babe
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #give me more names
    name = gets.chomp
  end
  #and the ready product array of input_students
  students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(students)
students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
