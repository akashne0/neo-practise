# print "Please enter the count of students you want to enter the data of:"
print "How many students data you want to enter?: "
student_count = gets.chomp.to_i

students_data = Hash.new { |h, k| h[k] = [] }

while student_count >= 1 do 

  print "Please enter the grade of the student: "
  student_grade = gets.chomp.to_i

  print "Please enter the First-name of the student: "
  student_name = gets.chomp  

  if students_data.has_value? student_name
    raise "The name already exist."
  else
    # student_name_array << student_name
    students_data[student_grade] << student_name
  end

  student_count -= 1

end

puts students_data

# Adding Jim to grade 2
print "Please enter the grade of the student: "
student_grade = gets.chomp.to_i

print "Please enter the First-name of the student: "
student_name = gets.chomp  

students_data[student_grade].push(student_name)
puts students_data.values.sort

# students_data.each{|key,value| puts value}




