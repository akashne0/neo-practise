def get_data_from_user()
  #collecting the data of the student.
  # print "Please enter the count of students you want to enter the data of:"
  print "How many students data you want to enter?: "
  student_count = gets.chomp.to_i

  #creating a hash and keeping the student name in an array 
  students_data = Hash.new { |h, k| h[k] = [] }

  # looping for  the student data
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

  # displaying the list of student enrolled
    # students_data.map{|grade, student| puts student.sort}
    # students_data.each{|grade, student| puts "For grade #{grade}, student names are #{student.sort}"}
    students_data.each{|grade, student| puts "Grade #{grade}: #{student.sort.join(', ')}."}
end

get_data_from_user()